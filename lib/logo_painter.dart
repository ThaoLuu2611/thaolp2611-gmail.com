import 'package:flutter/material.dart';

class LogoPainter extends StatefulWidget {
  @override
  _LogoPainterState createState() => _LogoPainterState();
}

class _LogoPainterState extends State<LogoPainter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(6),
      child: Text('portrait'),
    );
  }
}
