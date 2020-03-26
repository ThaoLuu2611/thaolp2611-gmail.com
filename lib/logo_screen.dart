import 'package:flutter/material.dart';
import 'package:fluttercustompainter/logo_painter.dart';
import 'package:fluttercustompainter/logo_painter_landscape.dart';

class LogoScreen extends StatefulWidget {
  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return LogoPainter();
            } else
              return LogoPainterLandscape();
          }
        ),
      ),
    );
  }
}
