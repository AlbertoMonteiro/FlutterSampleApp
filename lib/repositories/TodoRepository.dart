import 'package:proposalapp/repositories/ApiViewModels.dart';

class TodoRepository {
  List<TodoViewModel> _todos = List<TodoViewModel>();

  Future<List<TodoViewModel>> loadTodos() async {
    await Future.delayed(Duration(seconds: 1));
    return _todos;
  }

  Future addTodo(TodoViewModel todoViewModel) async {
    await Future.delayed(Duration(seconds: 2));
    _todos.add(todoViewModel);
  }
}
