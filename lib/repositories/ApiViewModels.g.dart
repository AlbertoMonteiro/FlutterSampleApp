// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiViewModels.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoViewModel on _TodoViewModel, Store {
  final _$titleAtom = Atom(name: '_TodoViewModel.title');

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

  final _$isDoneAtom = Atom(name: '_TodoViewModel.isDone');

  @override
  bool get isDone {
    _$isDoneAtom.context.enforceReadPolicy(_$isDoneAtom);
    _$isDoneAtom.reportObserved();
    return super.isDone;
  }

  @override
  set isDone(bool value) {
    _$isDoneAtom.context.conditionallyRunInAction(() {
      super.isDone = value;
      _$isDoneAtom.reportChanged();
    }, _$isDoneAtom, name: '${_$isDoneAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'title: ${title.toString()},isDone: ${isDone.toString()}';
    return '{$string}';
  }
}
