import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import '../../../core/app_export.dart';
import '../../../widgets/clock_view.dart';
import 'date_widget.dart';

class AnalogWatch extends StatelessWidget {
  AnalogWatch({Key? key}) : super(key: key);

  var weekday = DateFormat('EEEE').format(DateTime.now()).toUpperCase();
  var formatedDay = DateFormat('dd ').format(DateTime.now()).toUpperCase();
  var formatedMonthYear =
      DateFormat('MMM yyyy').format(DateTime.now()).toUpperCase();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: ClockView(),
        ),
        Padding(
          padding: getPadding(bottom:  68),
          child: DateAndWeekWidget(),
        ),
      ],
    );
  }
}
