import 'package:flutter/material.dart';
import 'package:uas1/loginPage/login.dart';
import 'package:uas1/route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
