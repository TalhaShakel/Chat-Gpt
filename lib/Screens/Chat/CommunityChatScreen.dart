import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class CommunityChatScreen extends StatelessWidget {
  const CommunityChatScreen({super.key});

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
                  40.h.heightBox,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      28.w.widthBox,
                      Column(
                        children: [
                          25.h.heightBox,
                          Text(
                            "123",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp),
                          ),
                          7.h.heightBox,
                          Text(
                            "Members",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                      20.w.widthBox,
                      Column(
                        children: [
                          Container(
                            height: 76.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(28.r))),
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Container(
                                height: 70.h,
                                width: 64.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(28.r))),
                                child: Image.asset(
                                  "assets/pro.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          10.h.heightBox,
                          Text(
                            "My Future",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp),
                          ),
                        ],
                      ),
                      28.0.w.widthBox,
                      Column(
                        children: [
                          25.h.heightBox,
                          Text(
                            "123",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp),
                          ),
                          7.h.heightBox,
                          Text(
                            "Online",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                  20.h.heightBox,
                ],
              ),
            ),
            /////////////////////////////////////////////////////////
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
                child:
                    //////////////////////////////////////////////////
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    7.h.heightBox,
                    Center(
                      child: Container(
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
                    ),
                    19.h.heightBox,
                    ListTile(
                      leading: Container(
                        height: 24.h,
                        width: 24.w,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/pp.png"),
                          // radius: 43.r,
                        ),
                      ),
                      minLeadingWidth: 6.w,
                      title: Container(
                        height: 31.h,
                        width: 172.w,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F1EC),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(19)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Oh it's okay i like it too ",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.black),
                          ),
                        ),
                      ),
                      subtitle: Text(
                        "seen",
                        style:
                            TextStyle(fontSize: 8.sp, color: Color(0xff8D8D8D)),
                      ),
                    ),
                    38.h.heightBox,
                    /////////////////////////////////////////
                    Align(
                      alignment: Alignment.topRight,
                      child: ListTile(
                        trailing: Container(
                          height: 24.h,
                          width: 24.w,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/pp.png"),
                            // radius: 43.r,
                          ),
                        ),
                        minLeadingWidth: 6.w,
                        title: Container(
                          height: 31.h,
                          width: 172.w,
                          decoration: BoxDecoration(
                            color: Color(0xffB0EFEC),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(19)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Oh it's okay i like it too ",
                              style: TextStyle(
                                  fontSize: 14.sp, color: Colors.black),
                            ),
                          ),
                        ),
                        subtitle: Text(
                          "seen",
                          style: TextStyle(
                              fontSize: 8.sp, color: Color(0xff8D8D8D)),
                        ),
                      ),
                    ),

//////////////////////////////////////////////////////////////
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(children: [
                          Container(
                            width: 260.w,
                            height: 40.h,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: ConstColors.textfieldColor,
                                prefixIcon: Icon(
                                  Icons.emoji_emotions_outlined,
                                  color: Colors.grey,
                                ),
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ConstColors.CircleColor, width: 1),
                                  borderRadius: BorderRadius.circular(68),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ConstColors.textfieldColor),
                                  borderRadius: BorderRadius.circular(68),
                                ),
                                hintText: "Write a message..",
                                hintStyle: TextStyle(color: Color(0xffAAAAAA)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(68),
                                ),
                                // errorText: _errorText,
                              ),
                            ),
                          ),
                          9.w.widthBox,
                          Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: ConstColors.btnColor),
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 25.sp,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    13.h.heightBox,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
