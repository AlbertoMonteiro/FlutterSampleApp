import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:proposalapp/pages/home/TodoCreatePage.dart';
import 'package:proposalapp/pages/home/TodoCreateStore.dart';
import 'package:proposalapp/pages/home/TodoListPage.dart';
import 'package:proposalapp/pages/home/TodoListStore.dart';
import 'package:proposalapp/repositories/TodoRepository.dart';

import 'AppWidget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((ctx) => TodoListStore(ctx.get<TodoRepository>()), singleton: false),
        Bind((ctx) => TodoCreateStore(ctx.get<TodoRepository>())),
        Bind((_) => TodoRepository()),
      ];

  @override
  List<Router> get routers => [
        Router('/todos', child: (_, args) => TodoListPage(Modular.get<TodoListStore>())),
        Router('/todos/create', child: (_, args) => TodoCreatePage(Modular.get<TodoCreateStore>())),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
