import 'package:basico/routes/app_routes.dart';
import 'package:basico/routes/routers_screen.dart';
import 'package:flutter/material.dart';

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
      title: 'basico',
      routes: AppRoutes.getRoutes(),
      initialRoute: RoutersScreen.home,
    );
  }
}
