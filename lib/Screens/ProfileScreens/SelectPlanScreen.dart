import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Screens/BottomNavBar/BottomNavBar.dart';
import 'package:velocity_x/velocity_x.dart';

class SelectPlanScreen extends StatelessWidget {
  const SelectPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            39.h.heightBox,
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                Center(
                  child: Container(
                    height: 189.h,
                    width: 189.w,
                    child: Image.asset(
                      "assets/b.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            GestureDetector(
              onTap: () {
                Get.to(() => MianHomeScreen());
              },
              child: Center(
                child: "Hooray we are done!"
                    .text
                    .size(24.sp)
                    .fontWeight(FontWeight.w600)
                    .make(),
              ),
            ),
            5.heightBox,
            "You’ve completed your account setup. Lets’s start."
                .text
                .size(16.sp)
                .center
                .lineHeight(1.8)
                .fontWeight(FontWeight.w400)
                .make(),
            47.h.heightBox,
            Container(
              height: 170.h,
              width: 350.w,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Color(0xffD6EFFA)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("With Ads",
                        style: TextStyle(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff495355))),
                    8.h.heightBox,
                    Text("Free forever",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff475153))),
                    15.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "3:00PM"
                            .text
                            .size(20.sp)
                            .color(Color(0xff475153))
                            .fontWeight(FontWeight.w500)
                            .make(),
                        Container(
                          height: 30.h,
                          width: 71.w,
                          decoration: BoxDecoration(
                              color: Color(0xff3E484A),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(43.r))),
                          child: Center(
                            child: "30 Min"
                                .text
                                .size(12.sp)
                                .color(Colors.white)
                                .fontWeight(FontWeight.w600)
                                .make(),
                          ),
                        ),
                        "3:00PM"
                            .text
                            .size(20.sp)
                            .color(Color(0xff475153))
                            .fontWeight(FontWeight.w500)
                            .make(),
                      ],
                    ),
                    8.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Start"
                            .text
                            .size(16.sp)
                            .color(Color(0xff475153))
                            .fontWeight(FontWeight.w500)
                            .make(),
                        Container(
                          width: 68.w,
                          child: "Ends"
                              .text
                              .size(16.sp)
                              .color(Color(0xff475153))
                              .fontWeight(FontWeight.w500)
                              .make(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            19.h.heightBox,
            "Credits".text.size(24.sp).fontWeight(FontWeight.w600).make(),
            18.h.heightBox,
            basicPlanContainer(Color(0xffF5D7D5)),
            11.h.heightBox,
            ////////////////////Creative Plan/////////////////////////
            planContainer("Creative\nPlan", Color(0xffB0BABC)),
            ////////////////////Amazing Plan/////////////////////////
            11.h.heightBox,
            planContainer("Amazing\nPlan", Color(0xffCEEDCB)),
            48.h.heightBox,

            "Chat GPT".text.size(24.sp).fontWeight(FontWeight.w600).make(),
            18.h.heightBox,
            basicPlanContainer(Color(0xffFAF4B8)),
            11.h.heightBox,

            ////////////////////Creative Plan/////////////////////////
            planContainer("Creative\nPlan", Color(0xff9CFFD9)),
            ////////////////////Amazing Plan/////////////////////////
            11.h.heightBox,
            planContainer("Amazing\nPlan", Color(0xffCBCBCB)),
            23.h.heightBox,
          ]),
        ),
      ),
    );
  }

  Container basicPlanContainer(Color ContainerColor) {
    return Container(
      height: 219.h,
      width: 350.w,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: ContainerColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 31.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Basic Plan",
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff6C4510))),
            45.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.remove,
                  color: Color(0xff654614),
                ),
                Icon(
                  Icons.add,
                  color: Color(0xff654614),
                ),
              ],
            ),
            10.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30.h,
                  width: 71.w,
                  decoration: BoxDecoration(
                      color: Color(0xff654614),
                      borderRadius: BorderRadius.all(Radius.circular(43.r))),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container planContainer(var heading, Color ContainerColor) {
    return Container(
      height: 170.h,
      width: 350.w,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: ContainerColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$heading",
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff495355))),
            Align(
              alignment: Alignment.bottomRight,
              child: Text("Recommended",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff475153))),
            ),
            8.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "3:00PM"
                    .text
                    .size(20.sp)
                    .color(Color(0xff475153))
                    .fontWeight(FontWeight.w500)
                    .make(),
                Container(
                  height: 30.h,
                  width: 71.w,
                  decoration: BoxDecoration(
                      color: Color(0xff3E484A),
                      borderRadius: BorderRadius.all(Radius.circular(43.r))),
                  child: Center(
                    child: "30 Min"
                        .text
                        .size(12.sp)
                        .color(Colors.white)
                        .fontWeight(FontWeight.w600)
                        .make(),
                  ),
                ),
                "3:00PM"
                    .text
                    .size(20.sp)
                    .color(Color(0xff475153))
                    .fontWeight(FontWeight.w500)
                    .make(),
              ],
            ),
            // 5.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Start"
                    .text
                    .size(16.sp)
                    .color(Color(0xff475153))
                    .fontWeight(FontWeight.w500)
                    .make(),
                Container(
                  width: 68.w,
                  child: "Ends"
                      .text
                      .size(16.sp)
                      .color(Color(0xff475153))
                      .fontWeight(FontWeight.w500)
                      .make(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
