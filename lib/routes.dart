
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercustompainter/home_screen.dart';

class Routes {
  static const String homeScreen = '/homeScreen';


  static Route<dynamic> navigateToScreen(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
            builder: (context) => HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('...'),
            ),
          )
        );
    }
  }
}


