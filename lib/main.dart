import 'package:biggy237/route_manager.dart';
import 'package:biggy237/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biggy237',
      debugShowCheckedModeBanner: false,
      theme: getTheme(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

