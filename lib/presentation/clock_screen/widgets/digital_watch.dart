import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import '../../../core/app_export.dart';
import '../../../widgets/clock_view.dart';
import 'date_widget.dart';

class DigitalWatch extends StatefulWidget {
  DigitalWatch({Key? key}) : super(key: key);

  @override
  State<DigitalWatch> createState() => _DigitalWatchState();
}

class _DigitalWatchState extends State<DigitalWatch> {
  
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 24,),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                   DateFormat('hh').format(DateTime.now()).toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtHelveticaNeueMedium10363.copyWith(
                      height: 0.8
                    ),
                  ),
                  Text(
                    DateFormat('mm').format(DateTime.now()).toUpperCase(),

                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtHelveticaNeueMedium10363PinkA200.copyWith(
                      height: 0.8
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  // top: 156,
                  bottom: 12,
                ),
                child: Text(
                    DateFormat('ss').format(DateTime.now()).toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtHelveticaNeueLight20,
                  ),
              ),
            ],
          ),

          DateAndWeekWidget(),
          
        ],
      ),
    );
  }
}
