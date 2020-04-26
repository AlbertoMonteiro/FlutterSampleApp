import 'package:mobx/mobx.dart';
import 'package:proposalapp/repositories/ApiViewModels.dart';
import 'package:proposalapp/repositories/TodoRepository.dart';

part 'TodoCreateStore.g.dart';

class TodoCreateStore = _TodoCreateStore with _$TodoCreateStore;

abstract class _TodoCreateStore with Store {
  final TodoRepository _todoRepository;

  @observable
  String title = "";

  @observable
  bool saving = false;

  _TodoCreateStore(this._todoRepository);

  @action
  Future<void> createTodo() async {
    saving = true;
    await _todoRepository.addTodo(TodoViewModel(title));
    saving = false;
  }
}
