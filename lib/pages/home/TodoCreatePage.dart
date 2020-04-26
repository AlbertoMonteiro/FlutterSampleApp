import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:proposalapp/pages/home/TodoCreateStore.dart';
import 'package:proposalapp/resources/Export.dart';

class TodoCreatePage extends StatelessWidget {
  final TodoCreateStore _todoCreateStore;

  TodoCreatePage(this._todoCreateStore);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todos"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              AppStrings.todoCreate.headerTitle,
              TextField(
                onChanged: (s) => _todoCreateStore.title = s,
                decoration: TextFieldStyles.field(),
              ),
            ],
          ),
        ),
        floatingActionButton: Observer(
          builder: (_) {
            if (_todoCreateStore.saving) return CircularProgressIndicator();

            return FloatingActionButton(
              child: Icon(Icons.save),
              onPressed: () async {
                await _todoCreateStore.createTodo();
                Navigator.pushNamedAndRemoveUntil(context, '/todos', (_) => false);
              },
            );
          },
        ));
  }
}
