import 'package:flutter/material.dart';

class LoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    
    // FIGURA AZUL OSCURO ---------------------------
    final path1 = Path();
    path1.moveTo(0, size.height);
    path1.lineTo(0, size.height*.3);
    
    path1.arcToPoint(
      Offset(size.width*.35, size.height*.5), 
      radius: Radius.circular(size.width * 0.4), 
    );

    path1.arcToPoint(
      Offset(size.width*.65, size.height*.7), 
      radius: Radius.circular(size.width * 0.4), 
      clockwise: false
    );

    path1.arcToPoint(
      Offset(size.width*.80, size.height), 
      radius: Radius.circular(size.width * 0.4), 
    );

    path1.lineTo(0, size.height);
    canvas.drawPath(path1, paint);
    
    // CIRCULO DERECHA ARRIBA ----------------
    path1.reset();

    path1.moveTo(size.width, 0);
    path1.lineTo(size.width, size.height*.25);
    path1.arcToPoint(
      Offset(size.width*.55, 0),
      radius: Radius.circular(size.width*.5)
    );
    canvas.drawPath(path1, paint);





    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) => false;
}
