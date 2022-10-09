import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import '../../../core/app_export.dart';

class DateAndWeekWidget extends StatelessWidget {
   DateAndWeekWidget({Key? key}) : super(key: key);

  var weekday = DateFormat('EEEE').format(DateTime.now()).toUpperCase();
  var formatedDay = DateFormat('dd ').format(DateTime.now()).toUpperCase();
  var formatedMonthYear =
      DateFormat('MMM yyyy').format(DateTime.now()).toUpperCase();
      
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weekday,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtUbuntuCondensedRegular14.copyWith(
            letterSpacing: 1,
          ),
        ),
        SizedBox(
          height: getSize(2),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              formatedDay,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUbuntuCondensedRegular10PinkA200,
            ),
            Text(
              formatedMonthYear,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUbuntuCondensedRegular10,
            ),
          ],
        )
      ],
    );
  }
}