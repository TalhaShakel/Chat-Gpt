import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class bottomSheetScreen extends StatelessWidget {
  const bottomSheetScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 679.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(19)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(children: [
          21.h.heightBox,
          Row(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 48.w,
                height: 23.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: ConstColors.btnColor),
                    borderRadius: BorderRadius.all(Radius.circular(43.r))),
                child: Center(
                    child: "0/1"
                        .text
                        .size(12.sp)
                        .fontWeight(FontWeight.w500)
                        .make()),
              )
            ],
          ),
          31.h.heightBox,
          "Pick some topics you are interested in"
              .text
              .fontWeight(FontWeight.w600)
              .softWrap(true)
              .size(24.sp)
              .make(),
          10.h.heightBox,
          "We’ll use them to refine your feed with the selected topics"
              .text
              .fontWeight(FontWeight.w400)
              .softWrap(true)
              .lineHeight(1.5)
              .size(16.sp)
              .make(),
          20.h.heightBox,
        ]),
      ),
    );
  }
}
