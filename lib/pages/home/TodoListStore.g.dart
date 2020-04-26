// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TodoListStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoListStore on _TodoListStore, Store {
  final _$loadingAtom = Atom(name: '_TodoListStore.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$todosAtom = Atom(name: '_TodoListStore.todos');

  @override
  ObservableList<TodoViewModel> get todos {
    _$todosAtom.context.enforceReadPolicy(_$todosAtom);
    _$todosAtom.reportObserved();
    return super.todos;
  }

  @override
  set todos(ObservableList<TodoViewModel> value) {
    _$todosAtom.context.conditionallyRunInAction(() {
      super.todos = value;
      _$todosAtom.reportChanged();
    }, _$todosAtom, name: '${_$todosAtom.name}_set');
  }

  final _$loadTodosAsyncAction = AsyncAction('loadTodos');

  @override
  Future<void> loadTodos() {
    return _$loadTodosAsyncAction.run(() => super.loadTodos());
  }

  final _$removeAsyncAction = AsyncAction('remove');

  @override
  Future<void> remove(TodoViewModel todo) {
    return _$removeAsyncAction.run(() => super.remove(todo));
  }

  @override
  String toString() {
    final string = 'loading: ${loading.toString()},todos: ${todos.toString()}';
    return '{$string}';
  }
}
