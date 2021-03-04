import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_app/nick/nick_view.dart';
import 'package:flutter_app/todo_list/todo_list.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: NickView, initial: true),
    MaterialRoute(page: ToDoList),
  ],
)
class $Router {}
