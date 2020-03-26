import 'package:flutter/material.dart';

class LogoPainterLandscape extends StatefulWidget {
  @override
  _LogoPainterLandscapeState createState() => _LogoPainterLandscapeState();
}

class _LogoPainterLandscapeState extends State<LogoPainterLandscape> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(6),
        child: CustomPaint(
          painter: LogoPaint(),
        ));
  }
}

class LogoPaint extends CustomPainter {
  Paint _paint;

  LogoPaint(){
  _paint = Paint()
      ..color = Colors.teal[700]
      //..style = PaintingStyle.stroke
      ..strokeWidth = 10;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
        Offset(25.0, 100.0), Offset(25.0, 400.0), _paint);
    canvas.drawLine(
        Offset(80.0, 100.0), Offset(80.0, 400.0), _paint);
    canvas.drawLine(
        Offset(10.0, 200.0), Offset(100.0, 200.0), _paint);
    canvas.drawLine(
        Offset(10.0, 300.0), Offset(100.0, 300.0), _paint);
    
    var rect = Rect.fromLTWH(140, 100, 80, 200);
    _paint.color = Colors.red;
    canvas.drawRect(rect, _paint);

    _paint.color = Colors.green;
    rect = Rect.fromLTWH(140, 20, 80, 80);
    canvas.drawOval(rect, _paint);

  //  var circleRect = Offset(140, 20) & Size(80.0, 80.0);
    
  }
  

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    throw true;
  }
}
