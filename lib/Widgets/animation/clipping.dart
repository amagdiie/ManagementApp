import 'package:flutter/cupertino.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color(0xffffffff)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.0020000,size.height*0.9800000);
    path0.lineTo(size.width*0.0020000,size.height*0.2550000);
    path0.quadraticBezierTo(size.width*0.2951800,size.height*0.2512500,size.width*0.3951800,size.height*0.2500000);
    path0.quadraticBezierTo(size.width*0.3949000,size.height*0.6529500,size.width*0.5010000,size.height*0.6657500);
    path0.quadraticBezierTo(size.width*0.6005200,size.height*0.6535500,size.width*0.6041200,size.height*0.2500000);
    path0.quadraticBezierTo(size.width*0.7036200,size.height*0.2500000,size.width*0.9980000,size.height*0.2500000);
    path0.lineTo(size.width*0.9972600,size.height*0.9950000);
    path0.lineTo(size.width*0.0020000,size.height*0.9800000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
