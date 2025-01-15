import 'package:flutter/material.dart';

class MyPainterWidget extends CustomPainter {
  final Color color;

  MyPainterWidget({super.repaint, required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color // Adjust the color and transparency
      ..style = PaintingStyle.fill;

    Path path = Path();

    // Starting from the bottom-right corner
    path.moveTo(size.width * 0.7, size.height);

    // Creating the curve for the bottom to top, resembling a half-circle
    path.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.5, // Control point (middle of the canvas)
      size.width * 0.3, 0, // End point (top-left side of the canvas)
    );

    // Closing the path to the top-right corner
    path.lineTo(size.width, 0);

    // Closing the path to the bottom-right corner
    path.lineTo(size.width, size.height);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
