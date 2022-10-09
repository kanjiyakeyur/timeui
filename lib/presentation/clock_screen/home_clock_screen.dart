import 'package:hexcolor/hexcolor.dart';
import 'package:keyur_s_application1/presentation/clock_screen/widgets/digital_watch.dart';
import 'package:keyur_s_application1/widgets/clock_view.dart';

import '../clock_screen/widgets/clock_item_widget.dart';
import 'controller/clock_controller.dart';
import 'models/clock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:keyur_s_application1/core/app_export.dart';

import 'widgets/analog_watch.dart';

class HomeClockScreen extends GetWidget<ClockController> {
  var time = DateFormat('hh:mm').format(DateTime.now());
  

  var digitalWatch = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#1C232D"),
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(top: 25, left: 25, right: 25),
                child: Container(
                  height: 50,
                  child: commonAppbar(),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: getPadding(left: 25, right: 25),
                      child: Column(
                        children: [
                          SizedBox(
                            height: getVerticalSize(40),
                          ),
                          Container(
                            height: getSize(
                              320.00,
                            ),
                            width: getSize(
                              320.00,
                            ),
                            child: Obx(() => 
                            
                            GestureDetector(
                              onDoubleTap: () => {
                                digitalWatch.value = !digitalWatch.value
                              },
                              child: 
                              digitalWatch.value ? 
                                DigitalWatch()
                              :
                              AnalogWatch(),
                              
                              )
                            
                            ,)
                            
                            
                          ),
                          Padding(
                            padding: getPadding(
                              top: 27,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(top: 6.0),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgPartlycloudy,
                                      height: getSize(
                                        27.00,
                                      ),
                                      width: getSize(
                                        40.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "lbl_36".tr.toUpperCase(),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUbuntuCondensedRegular3312,
                                ),
                                Padding(
                                  padding: getPadding(top: 2.0),
                                  child: Text(
                                    "lbl_c".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUbuntuMedium2038,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(bottom: 1),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.cloudArrowUp,
                                    height: getVerticalSize(
                                      12.00,
                                    ),
                                    width: getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                ),
                                Text(
                                  "lbl_06_15_am".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUbuntuCondensedRegular1114,
                                ),
                                SizedBox(
                                  width: getSize(12),
                                ),
                                Text(
                                  "lbl_sunset_clouds".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUbuntuCondensedRegular1359
                                      .copyWith(
                                    letterSpacing: 0.14,
                                  ),
                                ),
                                SizedBox(
                                  width: getSize(12),
                                ),
                                Padding(
                                  padding: getPadding(bottom: 1),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.cloudArrowDown,
                                    height: getVerticalSize(
                                      12.00,
                                    ),
                                    width: getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                ),
                                Text(
                                  "lbl_10_12_pm".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUbuntuCondensedRegular1114,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 26,
                              top: 11,
                              right: 26,
                            ),
                            child: Text(
                              "lbl_today".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtUbuntuCondensedRegular20.copyWith(
                                letterSpacing: 0.20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: getVerticalSize(
                          140.00,
                        ),
                        width: getHorizontalSize(
                          658.00,
                        ),
                        child: Obx(
                          () => ListView.builder(
                            padding: getPadding(
                              left: 25,
                              top: 41,
                            ),
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemCount: controller
                                .clockModelObj.value.clockItemList.length,
                            itemBuilder: (context, index) {
                              ClockItemModel model = controller
                                  .clockModelObj.value.clockItemList[index];
                              return ClockItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonImageView(
                  svgPath: ImageConstant.imgClock,
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                    bottom: 10
                  ),
                  child: Text(
                    "lbl_clock".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUbuntuCondensedRegular10,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonImageView(
                  svgPath: ImageConstant.imgClock24X24,
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                    bottom: 10
                  ),
                  child: Text(
                    "lbl_alarm".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUbuntuCondensedRegular10,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonImageView(
                  svgPath: ImageConstant.imgClock1,
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                    bottom: 10
                  ),
                  child: Text(
                    "lbl_stopwatch".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUbuntuCondensedRegular10,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonImageView(
                  svgPath: ImageConstant.imgCalendar24X24,
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                    bottom: 10
                  ),
                  child: Text(
                    "lbl_tasks".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUbuntuCondensedRegular10,
                  ),
                ),
              ],
            ),
          
          ],
        ),
      ),
    );
  }

  Widget commonAppbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "lbl_lucknow".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUbuntuCondensedRegular18,
            ),
            Padding(
              padding: getPadding(
                top: 5,
                // right: 10, 
              ),
              child: Text(
                "lbl_uttar_pradesh".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUbuntuCondensedRegular10,
              ),
            ),
          ],
        ),
        Spacer(),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CommonImageView(
              svgPath: ImageConstant.imgCalendar,
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 20,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgMenu,
                height: getSize(
                  24.00,
                ),
                width: getSize(
                  24.00,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
