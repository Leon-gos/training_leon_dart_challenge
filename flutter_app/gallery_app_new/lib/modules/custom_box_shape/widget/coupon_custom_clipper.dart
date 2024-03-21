import 'package:flutter/material.dart';

class CouponCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var clipPath = Path();

    path.addRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        const Radius.circular(4),
      ),
    );

    clipPath.addOval(
      Rect.fromCircle(
        center: Offset((size.width / 10) * 3, 0),
        radius: 12,
      ),
    );

    clipPath.addOval(
      Rect.fromCircle(
        center: Offset((size.width / 10) * 3, size.height),
        radius: 12,
      ),
    );

    final couponPath = Path.combine(PathOperation.reverseDifference, clipPath, path);

    return couponPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
