import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Create a path that looks like a half circle
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(
      size.width,
      size.height - 60,
      // size.width,
      // size.height,
    );
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
