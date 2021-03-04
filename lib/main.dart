import 'package:flutter/material.dart';
import 'package:flutter_app/routes.g.dart';
import 'package:get_it/get_it.dart';
import 'User.dart';

final getIt = GetIt.instance;
void main() {
  getIt.registerSingleton<User>(User());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: Routes.toDoList,
        onGenerateRoute: AppRouter().onGenerateRoute);
  }

  // This widget is the root of your application.
/*   @override
  Widget build(BuildContext context) {
    print(getIt<User>().name.toString());
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: getIt<User>().name.toString()),
    );
  } */
}
