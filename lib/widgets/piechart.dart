import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_wallet_app/helper/data.dart';

class PieChart extends StatelessWidget {
  const PieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 13.0),
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            shape: BoxShape.circle,
            boxShadow: customShadow,
            border: Border.all(width: 0.5, color: Colors.white)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
            ),
            Center(
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    shape: BoxShape.circle,
                    boxShadow: customShadow,
                    border: Border.all(
                        width: 1.5, color: Colors.white.withOpacity(0.2))),
                child: Center(
                    child: Text(
                  "\$9340",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;

    double total = 0;
    expenses.forEach((element) => total += element['amount']);
    double startRadian = -pi / 2;
    for (var i = 0; i < expenses.length; i++) {
      final currentexpenses = expenses[i];
      final sweepRadian = (currentexpenses['amount'] / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
