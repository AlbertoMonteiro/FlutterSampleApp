import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:proposalapp/pages/home/TodoListStore.dart';
import 'package:velocity_x/velocity_x.dart';

class TodoListPage extends StatelessWidget {
  final TodoListStore _todoListStore;

  TodoListPage(this._todoListStore);

  @override
  Widget build(BuildContext context) {
    _todoListStore.loadTodos();
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      body: Observer(
        builder: (_) {
          if (_todoListStore.loading) {
            return Center(child: CircularProgressIndicator());
          }

          if (_todoListStore.todos.isEmpty) {
            return ListTile(title: "Nenhum todo cadastrado, clique em + para adicionar um novo todo".text.makeCentered());
          }

          return ListView.builder(
              itemCount: _todoListStore.todos.length,
              itemBuilder: (_, index) {
                var todo = _todoListStore.todos[index];
                return Dismissible(
                  key: Key(todo.title),
                  secondaryBackground: Container(
                    color: Colors.red.withOpacity(0.75),
                    padding: EdgeInsets.all(4),
                    child: Icon(
                      Icons.delete_outline,
                      color: Colors.white,
                    ).objectCenterRight(),
                  ),
                  background: Container(
                    color: Colors.green.withOpacity(0.75),
                    padding: EdgeInsets.all(4),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ).objectCenterLeft(),
                  ),
                  confirmDismiss: (direction) {
                    if (direction == DismissDirection.startToEnd) {
                      todo.isDone = !todo.isDone;
                      return Future.value(false);
                    } else {
                      _todoListStore.remove(todo);
                    }
                    return Future.value(true);
                  },
                  child: ListTile(
                    leading: Observer(
                      builder: (_) {
                        return Checkbox(
                          value: todo.isDone,
                          onChanged: (bool value) {
                            todo.isDone = value;
                          },
                        );
                      },
                    ),
                    title: Observer(
                      builder: (_) {
                        return Text(
                          todo.title,
                          style: TextStyle(decoration: todo.isDone ? TextDecoration.lineThrough : TextDecoration.none),
                        );
                      },
                    ),
                  ),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("vai criar");
          Navigator.pushNamed(context, '/todos/create');
        },
      ),
    );
  }
}
