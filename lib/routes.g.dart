// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'nick/nick_view.dart';
import 'todo_list/todo_list.dart';

class Routes {
  static const String nickView = '/';
  static const String toDoList = '/to-do-list';
  static const all = <String>{
    nickView,
    toDoList,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.nickView, page: NickView),
    RouteDef(Routes.toDoList, page: ToDoList),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    NickView: (data) {
      final args = data.getArgs<NickViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => NickView(args.context),
        settings: data,
      );
    },
    ToDoList: (data) {
      final args = data.getArgs<ToDoListArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ToDoList(args.context),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// NickView arguments holder class
class NickViewArguments {
  final BuildContext context;
  NickViewArguments({@required this.context});
}

/// ToDoList arguments holder class
class ToDoListArguments {
  final BuildContext context;
  ToDoListArguments({@required this.context});
}
