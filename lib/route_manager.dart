import 'package:biggy237/ui/screens/base/base.dart';
import 'package:biggy237/ui/screens/contestant_details/contestant_details_screen.dart';
import 'package:biggy237/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            settings: RouteSettings(name: "/"), builder: (_) => BaseScreen());
        break;
        case "/contestantDetails":
        return MaterialPageRoute(
            settings: RouteSettings(name: "/contestantDetails"), builder: (_) => ContestantDetailsScreen());
        break;

      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
