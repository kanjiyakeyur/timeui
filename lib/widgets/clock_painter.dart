import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CommonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    DateTime dateTime = DateTime.now();

    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var offset = Offset(centerX, centerY);
    var radius = min(centerX, centerY);

    var paint = Paint()..color = Colors.indigo;

    var outLinePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 16
      ..style = PaintingStyle.stroke;

    var centerPointPaint = Paint()
      ..color = Colors.white30
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var secondHandBrush = Paint()
      ..color = HexColor("#ACADBB")
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var minuteHandBrush = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    var hourHandBrush = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 7
      ..style = PaintingStyle.stroke;

    var secHandX = centerX + 120 * cos(dateTime.second * 6 * pi / 180);
    var secHandY = centerY + 120 * sin(dateTime.second * 6 * pi / 180);
    canvas.drawLine(offset, Offset(secHandX, secHandY), secondHandBrush);

    var minHandX = centerX + 94 * cos(dateTime.minute * 6 * pi / 180);
    var minHandY = centerY + 94 * sin(dateTime.minute * 6 * pi / 180);
    canvas.drawLine(offset, Offset(minHandX, minHandY), minuteHandBrush);

    var hourHandX = centerX +
        60 * cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    var hourHandY = centerY +
        60 * sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    canvas.drawLine(offset, Offset(hourHandX, hourHandY), hourHandBrush);


    var outerCircleRadius = radius;
    var innerCircleRadius = radius - 5;
    for (int i = 0; i <= 360; i += 6) {
      var x1 = centerX + outerCircleRadius * cos(i * pi / 180);
      var y1 = centerY + outerCircleRadius * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius * cos(i * pi / 180);
      var y2 = centerY + innerCircleRadius * sin(i * pi / 180);
      if (i % 30 == 0) {
        centerPointPaint.strokeWidth = 4;
        canvas.drawLine(Offset(x1, y1), Offset(x2, y2), centerPointPaint);
      } else {
        centerPointPaint.strokeWidth = 1;
      }

    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
