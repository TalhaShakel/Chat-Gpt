import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.h.heightBox,
                  Text(
                    "Classic",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24.sp),
                  ),
                  25.h.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 54.h,
                                width: 54.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/e.png"),
                                      fit: BoxFit.cover),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.green,
                                  size: 20,
                                )),
                            11.h.heightBox,
                            Text(
                              "Add",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.sp),
                            ),
                          ],
                        ),
                        storiesContainer(),
                        storiesContainer(),
                        storiesContainer(),
                        storiesContainer(),
                        storiesContainer(),
                        22.h.heightBox,
                      ],
                    ),
                  )
                ],
              ),
            ),

//////////////////////////////////////////
            Container(
              height: Get.height.h,
              width: Get.width.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(31.0),
                    topLeft: Radius.circular(31.0)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child:
                    //////////////////////////////////////////////////
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    19.h.heightBox,

                    Container(
                      height: 48.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              BorderRadius.all(Radius.circular(31.r))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.w, horizontal: 9.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140.w,
                              height: 32.h,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: ConstColors.btnColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(43.r))),
                              child: Center(
                                  child: "All Messages"
                                      .text
                                      .size(12.sp)
                                      .fontWeight(FontWeight.w500)
                                      .make()),
                            ),
                            Container(
                              width: 140.w,
                              height: 32.h,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: ConstColors.btnColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(43.r))),
                              child: Center(
                                  child: "Communities"
                                      .text
                                      .size(12.sp)
                                      .fontWeight(FontWeight.w500)
                                      .make()),
                            ),
                          ],
                        ),
                      ),
                    ),
                   
                   
                   
                   
                   
                    230.h.heightBox,


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding storiesContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
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
          11.h.heightBox,
          Text(
            "Saepuls",
            style: TextStyle(color: Colors.white, fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
