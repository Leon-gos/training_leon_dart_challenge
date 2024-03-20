import 'package:flutter/material.dart';

class CustomPaintButton extends CustomPainter {
  final Color fillColor;

  CustomPaintButton({required this.fillColor});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = fillColor
      ..strokeWidth = 5
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    Offset center1 = Offset(size.width / 5, size.height / 10);
    Offset center2 = Offset(size.width / 5, size.height - size.height / 10);

    canvas.drawCircle(center1, size.height / 4, paint);
    canvas.drawCircle(center2, size.height / 4, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
