import 'package:flutter/material.dart';

class CouponCustomPainter extends CustomPainter {
  CouponCustomPainter({super.repaint});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.black54;
    paint.strokeWidth = 1;

    var dashWidth = 3;
    var dashSpace = 2;
    Offset startPoint = Offset((size.width / 10) * 3, 16);
    Offset endPoint = Offset((size.width / 10.0) * 3, size.height - 16);

    double currentDy = startPoint.dy;

    while (currentDy < endPoint.dy) {
      canvas.drawLine(Offset(startPoint.dx, currentDy),
          Offset(startPoint.dx, currentDy + dashWidth), paint);
      currentDy += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
