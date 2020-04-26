import 'package:mobx/mobx.dart';
import 'package:proposalapp/repositories/ApiViewModels.dart';
import 'package:proposalapp/repositories/TodoRepository.dart';

part 'TodoListStore.g.dart';

class TodoListStore = _TodoListStore with _$TodoListStore;

abstract class _TodoListStore with Store {
  final TodoRepository _todoRepository;

  _TodoListStore(this._todoRepository);

  @observable
  bool loading = false;

  @observable
  ObservableList<TodoViewModel> todos = ObservableList<TodoViewModel>();

  @action
  Future<void> loadTodos() async {
    loading = true;
    final returnedTodos = await _todoRepository.loadTodos();
    todos.addAll(returnedTodos);
    loading = false;
  }

  @action
  Future<void> remove(TodoViewModel todo) async {
    todos.remove(todo);
  }
}
