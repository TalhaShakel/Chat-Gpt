import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Wallet",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              31.h.heightBox,
              Container(
                height: 207.h,
                width: 350.w,
                decoration: BoxDecoration(
                    color: Color(0xff161326),
                    borderRadius: BorderRadius.all(Radius.circular(29.r))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 6.w),
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          height: 149.h,
                          width: 335.w,
                          decoration: BoxDecoration(
                              color: Color(0xffB0F8FF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(23.r))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 27.h, vertical: 27.w),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    "Free Plan"
                                        .text
                                        .size(16.sp)
                                        .fontWeight(FontWeight.w600)
                                        .make(),
                                    Icon(Icons.diamond_outlined),
                                  ],
                                ),
                                26.h.heightBox,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    "\$0.0"
                                        .text
                                        .size(33.sp)
                                        .fontWeight(FontWeight.w800)
                                        .make(),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      17.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 22.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Center(
                                child: Icon(
                              Icons.add,
                              size: 20,
                            )),
                          ),
                          9.w.widthBox,
                          "Add funds"
                              .text
                              .size(16.sp)
                              .color(Colors.white)
                              .fontWeight(FontWeight.w600)
                              .make(),
                          22.w.widthBox,
                          Container(
                            height: 22.h,
                            width: 2.w,
                            color: Colors.grey,
                          ),
                          22.w.widthBox,
                          Container(
                            height: 22.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Center(
                                child: Icon(
                              Icons.arrow_downward,
                              size: 15,
                            )),
                          ),
                          9.w.widthBox,
                          "Withdraw"
                              .text
                              .size(16.sp)
                              .color(Colors.white)
                              .fontWeight(FontWeight.w600)
                              .make(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ///////////////////////////////////////////
              32.h.heightBox,
              "Credits".text.size(24.sp).fontWeight(FontWeight.w600).make(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "23 images"
                      .text
                      .size(22.sp)
                      .fontWeight(FontWeight.w600)
                      .make(),
                  "Watch ads"
                      .text
                      .size(22.sp)
                      .fontWeight(FontWeight.w600)
                      .make(),
                ],
              ),
              15.h.heightBox,
              Divider(
                height: 2.h,
              ),
              15.h.heightBox,

              "Subscriptions"
                  .text
                  .size(24.sp)
                  .fontWeight(FontWeight.w600)
                  .make(),
              11.h.heightBox,
              "34".text.size(22.sp).fontWeight(FontWeight.w600).make(),
              15.h.heightBox,
              Divider(
                height: 2.h,
              ),
              15.h.heightBox,
              "Chat GPT".text.size(24.sp).fontWeight(FontWeight.w600).make(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "100 words left"
                      .text
                      .size(22.sp)
                      .fontWeight(FontWeight.w600)
                      .make(),
                  "Watch ads"
                      .text
                      .size(22.sp)
                      .fontWeight(FontWeight.w600)
                      .make(),
                ],
              ),
              36.h.heightBox,
              //////////////////////////////////////////
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
            ],
          ),
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
