import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class AudioSpaceComment extends StatelessWidget {
  const AudioSpaceComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0,
            leading: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back)),
            centerTitle: true,
            actions: [
              GestureDetector(
                onTap: () {},
                child: Container(
                    height: 28.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        color: Colors.transparent,
                        shape: BoxShape.circle),
                    child: Center(
                        child: Icon(
                      Icons.close,
                      size: 20,
                    ))),
              ),
              21.w.widthBox,
            ],
            backgroundColor: Colors.transparent),
        body: GestureDetector(
          onTap: () {
            Get.bottomSheet(audioBottomSheet());
          },
          child: Container(
            height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/asc.png"), fit: BoxFit.cover),
            ),
          ),
        ));
  }

  Container audioBottomSheet() {
    return Container(
      height: 438.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(31.r), topLeft: Radius.circular(31.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            13.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Comment",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),
                9.w.widthBox,
                Container(
                  height: 19.h,
                  width: 19.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ConstColors.CircleColor),
                  child: Center(
                    child: Text(
                      "23",
                      style: TextStyle(
                          color: Color(0xff6B6D7D),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
