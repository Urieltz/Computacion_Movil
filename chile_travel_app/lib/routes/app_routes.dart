
import 'package:chile_travel_app/screens/screens_export.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'turismo_indigena';

  static Map<String, Widget Function(BuildContext)> routes={
    'turismo_indigena': (BuildContext context) => TurismoIndigena(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder: (context)=> const ErrorScreen());
  }
  } 