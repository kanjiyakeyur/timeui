import '../controller/clock_controller.dart';
import '../models/clock_item_model.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:keyur_s_application1/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class ClockItemWidget extends StatelessWidget {
  ClockItemWidget(this.clockItemModelObj);

  ClockItemModel clockItemModelObj;

  var controller = Get.find<ClockController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getSize(323),
          margin: getMargin(
            right: 12,
          ),
          decoration: AppDecoration.outline.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder3,
          ),
          child: OutlineGradientButton(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                0.79,
              ),
              top: getVerticalSize(
                0.79,
              ),
              right: getHorizontalSize(
                0.79,
              ),
              bottom: getVerticalSize(
                0.79,
              ),
            ),
            strokeWidth: getHorizontalSize(
              0.79,
            ),
            gradient: LinearGradient(
              begin: Alignment(
                0,
                0,
              ),
              end: Alignment(
                1,1
              ),
              colors: [
                ColorConstant.gray90066,
                ColorConstant.gray90067,
              ],
            ),
            corners: Corners(
              topLeft: Radius.circular(
                3,
              ),
              topRight: Radius.circular(
                3,
              ),
              bottomLeft: Radius.circular(
                3,
              ),
              bottomRight: Radius.circular(
                3,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 21,
                    bottom: 20,
                  ),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "lbl_today_s_mood".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: AppStyle.txtUbuntuCondensedRegular10,
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: getMargin(
                    left: 2,
                    top: 12,
                    bottom: 13,
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: getHorizontalSize(
                        0.79,
                      ),
                    ),
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Container(
                    height: getSize(
                      74.00,
                    ),
                    width: getSize(
                      74.00,
                    ),
                    // decoration: AppDecoration.outline1.copyWith(
                    //   borderRadius: BorderRadiusStyle.roundedBorder3,
                    // ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            all: 4
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.img2322,
                            
                            height: getSize(
                              67.00,
                            ),
                            width: getSize(
                              67.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: getSize(220),
                  padding: getPadding(
                    left: 13,
                    // top: 16,
                    right: 13, 
                    // bottom: 17,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "lbl_work_to_do".tr.toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUbuntuCondensedRegular10,
                          ),
                          // Spacer(),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_03".tr.toUpperCase(),
                                  style: TextStyle(
                                    color: ColorConstant.pinkA200,
                                    fontSize: getFontSize(
                                      10,
                                    ),
                                    fontFamily: 'Ubuntu Condensed',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_may_2021".tr.toUpperCase(),
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontSize: getFontSize(
                                      10,
                                    ),
                                    fontFamily: 'Ubuntu Condensed',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Padding(
                        padding: getPadding(top: 7),
                        child: Text(
                          "msg_optimize_your_s".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUbuntuCondensedRegular9,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "lbl_pending".tr.toUpperCase(),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUbuntuCondensedRegular10Yellow800,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 17,
                                    // bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_03_56_mins_left".tr.toUpperCase(),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUbuntuCondensedRegular10DeeporangeA700,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: getPadding(
                                // left: 43,
                                bottom: 1,
                              ),
                              child: Text(
                                "lbl_remove_task".tr.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtUbuntuCondensedRegular10PinkA200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
