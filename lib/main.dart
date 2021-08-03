import 'package:flutter/material.dart';
import 'package:sign_up_login_ui/screens/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Challenge',
      onGenerateRoute: routeGenerator,
      initialRoute: '/login',
    );
  }
}
