import 'package:mobx/mobx.dart';

part 'ApiViewModels.g.dart';

class TodoViewModel = _TodoViewModel with _$TodoViewModel;

abstract class _TodoViewModel with Store {
  @observable
  String title;

  @observable
  bool isDone = false;

  _TodoViewModel(this.title);
}