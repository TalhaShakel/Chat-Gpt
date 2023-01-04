import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Screens/HomeScreens/ToDoListScreen/AddNewtodoList.dart';
import 'package:velocity_x/velocity_x.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  56.h.heightBox,
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  40.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 84.w,
                        height: 29.h,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: ConstColors.btnColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(43.r))),
                        child: Center(
                            child: "Today"
                                .text
                                .size(12.sp)
                                .fontWeight(FontWeight.w600)
                                .make()),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => AddNewToDoList());
                        },
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 25,
                          )),
                        ),
                      ),
                    ],
                  ),
                  30.h.heightBox,
                  "Tuesday"
                      .text
                      .fontWeight(FontWeight.w600)
                      .size(16.sp)
                      .color(Color(0xff6C6C6C))
                      .make(),
                  20.h.heightBox,
                  Center(
                    child: "12 DEC To Do List"
                        .text
                        .fontWeight(FontWeight.w600)
                        .size(32.sp)
                        .color(Colors.white)
                        .make(),
                  ),
                  20.h.heightBox,
                ],
              ),
            ),
            Container(
              height: Get.height.h,
              width: Get.width.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    27.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Today tasks"
                            .text
                            .fontWeight(FontWeight.w600)
                            .size(16.sp)
                            .color(Colors.black)
                            .make(),
                        Container(
                          width: 84.w,
                          height: 29.h,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: ConstColors.btnColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(43.r))),
                          child: Center(
                              child: "Reminder"
                                  .text
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w600)
                                  .make()),
                        ),
                      ],
                    ),
                    28.h.heightBox,
                    planContainer("You Have A Meeting", Color(0xffE1BB72),
                        Color(0xff6C4510))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container planContainer(var heading, Color ContainerColor, Color textcolor) {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 66.h,
                  width: 153.w,
                  child: Text("$heading",
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                          color: textcolor)),
                ),
                Container(
                  width: 70.w,
                  child: Stack(
                    children: [
                      Container(
                        height: 41.h,
                        width: 37.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(14.r))),
                        child: Center(child: Image.asset("assets/pp.png")),
                      ),
                      Positioned(
                        left: 30,
                        child: Container(
                          height: 41.h,
                          width: 37.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14.r))),
                          child: Center(child: Image.asset("assets/pp.png")),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            25.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "3:00PM"
                    .text
                    .size(20.sp)
                    .color(textcolor)
                    .fontWeight(FontWeight.w500)
                    .make(),
                Container(
                  height: 30.h,
                  width: 71.w,
                  decoration: BoxDecoration(
                      color: textcolor,
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
                    .color(textcolor)
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
                    .color(textcolor)
                    .fontWeight(FontWeight.w500)
                    .make(),
                Container(
                  width: 68.w,
                  child: "Ends"
                      .text
                      .size(16.sp)
                      .color(textcolor)
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
