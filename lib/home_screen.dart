import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom paint'),
      ),
      body: Container(
        color: Colors.amber,
        padding: EdgeInsets.all(20),
        child: LayoutBuilder(
          builder: (_, constraints) => Container(
          width: constraints.widthConstraints().maxWidth,
          height: constraints.heightConstraints().maxHeight,
          child: Container(
            width: 300,
            height: 500,
            child: CustomPaint(painter: FaceSmilePainter() ),
          ),
        ))
      ),
    );
  }

}

class FaceSmilePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 4.0
    ..color = Colors.indigo;
/*      canvas.drawRect(
          Rect.fromLTRB(20,20,100,100), paint);*/

     canvas.drawRRect(
         RRect.fromRectAndRadius(Rect.fromLTRB(20, 20, 100, 100), Radius.circular(20)), paint);


     canvas.drawOval(Rect.fromLTRB(120, 20, 240, 140), paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate)  => false;

}
