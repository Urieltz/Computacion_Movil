import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'screen1';
  static Map<String, Widget Function(BuildContext)> routes = {
    'screen1': (BuildContext context) => const Screen1(),
    'screen2': (BuildContext context) => const Screen2(),
    'screen3': (BuildContext context) => const Screen3(),
    'screen4': (BuildContext context) => const Screen4(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings setings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
    );
  }
}