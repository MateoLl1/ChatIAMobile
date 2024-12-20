import 'package:flutter/material.dart';

class LoginPainter extends CustomPainter {
  final Color colorBase;
  final bool isDark;

  LoginPainter({super.repaint, required this.colorBase,required this.isDark});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = colorBase
      ..style = PaintingStyle.fill;

    
    // FIGURA AZUL OSCURO ---------------------------
    final path1 = Path();
    path1.moveTo(0, size.height);
    path1.lineTo(0, size.height*.3);
    
    path1.arcToPoint(
      Offset(size.width*.4, size.height*.4), 
      radius: Radius.circular(size.width * 0.4), 
    );

    path1.arcToPoint(
      Offset(size.width*.7, size.height*.6), 
      radius: Radius.circular(size.width), 
      clockwise: false
    );

    path1.arcToPoint(
      Offset(size.width*.8, size.height), 
      radius: Radius.circular(size.width * 0.6), 
    );

    path1.lineTo(0, size.height);
    canvas.drawPath(path1, paint);


    // FIGURA BLANCA TRANSPARENTE GRANDE
    
    path1.reset();
    paint.color = isDark ? Colors.white24 : Colors.black12;
    path1.moveTo(size.width, 0);
    path1.lineTo(size.width*.55, size.height*.03);
    path1.arcToPoint(
      Offset(size.width*.45, size.height*.08),
      radius: Radius.circular(size.width*.1),
      clockwise: false
    );
    path1.lineTo(size.width*.5, size.height*.15);
    path1.arcToPoint(
      Offset(size.width*.41, size.height*.25),
      radius: Radius.circular(size.width*.25)
    );
    path1.arcToPoint(
      Offset(size.width*.23, size.height*.45),
      radius: Radius.circular(size.width*.6),
      clockwise: false
    );
    path1.arcToPoint(
      Offset(size.width*.35, size.height*.6),
      radius: Radius.circular(size.width*.45),
      clockwise: false
    );
    path1.arcToPoint(
      Offset(size.width*.45, size.height*.71),
      radius: Radius.circular(size.width*.4)
    );
    path1.lineTo(size.width*.62, size.height*.85);
    path1.arcToPoint(
      Offset(size.width*.7, size.height),
      radius: Radius.circular(size.width*.2)
    );
    path1.lineTo(size.width, size.height);
    path1.lineTo(size.width, 0);

    canvas.drawPath(path1, paint);
    
    // SEMICIRCULO DERECHA ARRIBA ----------------
    path1.reset();
    paint.color = colorBase;
    path1.moveTo(size.width, 0);
    path1.lineTo(size.width, size.height*.25);
    path1.arcToPoint(
      Offset(size.width*.55, 0),
      radius: Radius.circular(size.width*.5)
    );

    canvas.drawPath(path1, paint);


    // CIRCULO ARRIBA DERECHA
    path1.reset();
    paint.color = isDark ? Colors.black : Colors.white;
    // paint.color = colorBase.withOpacity(.2);
    path1.moveTo(size.width*.67, size.height*.17);
    path1.arcToPoint(
      Offset(size.width*.9, size.height*.17),
      radius: const Radius.circular(1)
    );
    path1.arcToPoint(
      Offset(size.width*.67, size.height*.17),
      radius: const Radius.circular(1)
    );

    canvas.drawPath(path1, paint);


    // CIRCULO ARRIBA IZQUIERDA
    path1.reset();
    path1.moveTo(0, 0);
    paint.color = !isDark ? Colors.black : Colors.white;
    path1.lineTo(size.width*.25, 0);
    path1.arcToPoint(
      Offset(0, size.height*.15),
      radius: Radius.circular(size.width*.1)
    );
    path1.lineTo(0, 0);

    canvas.drawPath(path1, paint);


    // CIRCULO PEQUEÑO ABAJO IZQUIERDA
    path1.reset();
    paint.color = Colors.black54;
    path1.moveTo(size.width*.1, size.height*.65);
    path1.arcToPoint(
      Offset(size.width*.25, size.height*.65),
      radius: const Radius.circular(1)
    );
    path1.arcToPoint(
      Offset(size.width*.1, size.height*.65),
      radius: const Radius.circular(1),
      clockwise: true 
    );

    canvas.drawPath(path1, paint);
    path1.reset();

    // CIRCULO GRANDE ABAJO IZQUIERDA
    path1.reset();
    paint.color = !isDark ? Colors.black : Colors.white;
    path1.moveTo(size.width*.25, size.height*.8);
    path1.arcToPoint(
      Offset(size.width*.65, size.height*.8),
      radius: const Radius.circular(1)
    );
    path1.arcToPoint(
      Offset(size.width*.25, size.height*.8),
      radius: const Radius.circular(1),
      clockwise: true 
    );

    canvas.drawPath(path1, paint);

    



    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) => false;
}
