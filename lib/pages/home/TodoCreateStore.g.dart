// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TodoCreateStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoCreateStore on _TodoCreateStore, Store {
  final _$titleAtom = Atom(name: '_TodoCreateStore.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$savingAtom = Atom(name: '_TodoCreateStore.saving');

  @override
  bool get saving {
    _$savingAtom.context.enforceReadPolicy(_$savingAtom);
    _$savingAtom.reportObserved();
    return super.saving;
  }

  @override
  set saving(bool value) {
    _$savingAtom.context.conditionallyRunInAction(() {
      super.saving = value;
      _$savingAtom.reportChanged();
    }, _$savingAtom, name: '${_$savingAtom.name}_set');
  }

  final _$createTodoAsyncAction = AsyncAction('createTodo');

  @override
  Future<void> createTodo() {
    return _$createTodoAsyncAction.run(() => super.createTodo());
  }

  @override
  String toString() {
    final string = 'title: ${title.toString()},saving: ${saving.toString()}';
    return '{$string}';
  }
}
