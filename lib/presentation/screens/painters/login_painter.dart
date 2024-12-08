import 'package:flutter/material.dart';

class LoginPainter extends CustomPainter {
  final Color color;

  LoginPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final paint = Paint();

    // FIGURA 1: AZUL OSCURO ---------------------------
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.3);
    path.arcToPoint(
      Offset(size.width * 0.4, size.height * 0.4),
      radius: Radius.circular(size.width * 0.4),
    );
    path.arcToPoint(
      Offset(size.width * 0.7, size.height * 0.6),
      radius: Radius.circular(size.width),
      clockwise: false,
    );
    path.arcToPoint(
      Offset(size.width * 0.8, size.height),
      radius: Radius.circular(size.width * 0.6),
    );
    path.lineTo(0, size.height);

    paint.shader = LinearGradient(
      colors: [color, color.withOpacity(0.7)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ).createShader(Rect.fromLTRB(0, 0, size.width, size.height));
    canvas.drawPath(path, paint);

    // FIGURA 2: BLANCA TRANSPARENTE GRANDE ---------------------------
    path.reset();
    path.moveTo(size.width, 0);
    path.lineTo(size.width * 0.55, size.height * 0.03);
    path.arcToPoint(
      Offset(size.width * 0.45, size.height * 0.08),
      radius: Radius.circular(size.width * 0.1),
      clockwise: false,
    );
    path.lineTo(size.width * 0.5, size.height * 0.15);
    path.arcToPoint(
      Offset(size.width * 0.41, size.height * 0.25),
      radius: Radius.circular(size.width * 0.25),
    );
    path.arcToPoint(
      Offset(size.width * 0.23, size.height * 0.45),
      radius: Radius.circular(size.width * 0.6),
      clockwise: false,
    );
    path.arcToPoint(
      Offset(size.width * 0.35, size.height * 0.6),
      radius: Radius.circular(size.width * 0.45),
      clockwise: false,
    );
    path.arcToPoint(
      Offset(size.width * 0.45, size.height * 0.71),
      radius: Radius.circular(size.width * 0.4),
    );
    path.lineTo(size.width * 0.62, size.height * 0.85);
    path.arcToPoint(
      Offset(size.width * 0.7, size.height),
      radius: Radius.circular(size.width * 0.2),
    );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    paint.shader = LinearGradient(
      colors: [color.withOpacity(0.2), Colors.transparent],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).createShader(Rect.fromLTRB(0, 0, size.width, size.height));
    canvas.drawPath(path, paint);

    // FIGURA 3: SEMICÍRCULO DERECHA ARRIBA ---------------------------
    path.reset();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.25);
    path.arcToPoint(
      Offset(size.width * 0.55, 0),
      radius: Radius.circular(size.width * 0.5),
    );

    paint.shader = LinearGradient(
      colors: [color.withOpacity(0.8), color.withOpacity(0.4)],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
    ).createShader(Rect.fromLTRB(0, 0, size.width, size.height));
    canvas.drawPath(path, paint);

    // FIGURA 4: CÍRCULO ARRIBA DERECHA ---------------------------
    paint.shader = RadialGradient(
      colors: [color, color.withOpacity(0.4)],
    ).createShader(Rect.fromCircle(
      center: Offset(size.width * 0.8, size.height * 0.1),
      radius: size.width * 0.15,
    ));
    canvas.drawCircle(
      Offset(size.width * 0.8, size.height * 0.1),
      size.width * 0.1,
      paint);

    // FIGURA 5: CÍRCULO ARRIBA IZQUIERDA ---------------------------
    paint.shader = RadialGradient(
      colors: [color.withOpacity(0.6), Colors.white.withOpacity(0.8)],
    ).createShader(Rect.fromCircle(
      center: Offset(size.width * 0.2, size.height * 0.1),
      radius: size.width * 0.1,
    ));
    canvas.drawCircle(
      Offset(size.width * 0.2, size.height * 0.1),
      size.width * 0.1,
      paint);

    // FIGURA 6: CÍRCULO PEQUEÑO ABAJO IZQUIERDA ---------------------------
    paint.shader = RadialGradient(
      colors: [color.withOpacity(0.4), Colors.white.withOpacity(0.7)],
    ).createShader(Rect.fromCircle(
      center: Offset(size.width * 0.1, size.height * 0.7),
      radius: size.width * 0.05,
    ));
    canvas.drawCircle(
      Offset(size.width * 0.1, size.height * 0.7),
      size.width * 0.05,
      paint);

    // FIGURA 7: CÍRCULO GRANDE ABAJO IZQUIERDA ---------------------------
    paint.shader = RadialGradient(
      colors: [color.withOpacity(0.5), Colors.black.withOpacity(0.7)],
    ).createShader(Rect.fromCircle(
      center: Offset(size.width * 0.45, size.height * 0.8),
      radius: size.width * 0.2,
    ));
    canvas.drawCircle(
      Offset(size.width * 0.45, size.height * 0.8),
      size.width * 0.2,
      paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) => false;
}
