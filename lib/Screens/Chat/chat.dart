import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      appBar: AppBar(
        backgroundColor: Color(0xff1d2931),
        elevation: 0,
        title: Row(
          children: [
            DottedBorder(
              color: Colors.green,
              borderType: BorderType.Circle,
              child: Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset("assets/p.png")),
            ),
            10.w.widthBox,
            Text(
              "Sabrina Wah",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
            ),
          ],
        ),
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          26.h.heightBox,
          Container(
            height: Get.height.h,
            width: Get.width.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(children: [
                8.h.heightBox,

                //////////////////////////////////////////////////////////
              ]),
            ),
          )
        ],
      )),
    );
  }
}
