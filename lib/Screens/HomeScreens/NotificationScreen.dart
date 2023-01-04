import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Screens/MainHomeScreen/MainHomeScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      appBar: AppBar(
        backgroundColor: Color(0xff1d2931),
        elevation: 0,
        title: Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
        ),
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          23.h.heightBox,
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      17.h.heightBox,
                      notifierContainer(),
                      notifierContainer(),
                      notifierContainer(),
                      notifierContainer(),
                      notifierContainer(),
                      notifierContainer(),
                      notifierContainer(),
                      notifierContainer(),
                      notifierContainer(),
                    ]),
              )),
        ],
      )),
    );
  }

  Padding notifierContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.w),
      child: Container(
        width: Get.width,
        color: Color(0xffF2F2F2),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 0.w, horizontal: 0.h),
          // dense: true,
          tileColor: Color(0xffF2F2F2),
          focusColor: Color(0xffF2F2F2),
          minLeadingWidth: 2,
          leading: Container(
            height: 57.h,
            width: 54.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: ConstColors.btnColor),
            ),
            child: Center(
                child: Text(
              "Follow",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            )),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lana",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
              ),
              4.h.heightBox,
              RichText(
                text: TextSpan(
                    text:
                        'Hai, whats’up bro. hayu atuh hangout dei jang Sabrina',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp),
                    children: [
                      TextSpan(
                        text: " 12m",
                        style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontWeight: FontWeight.w400,
                            fontSize: 8.sp),
                      )
                    ]),
              ),
            ],
          ),
          // subtitle: RichText(
          //   text: TextSpan(
          //       text:
          //           'Hai, whats’up bro. hayu atuh hangout dei jang Sabrina',
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontWeight: FontWeight.w400,
          //           fontSize: 10.sp),
          //       children: [
          //         TextSpan(
          //           text: " 12m",
          //           style: TextStyle(
          //               color: Color(0xff6C6C6C),
          //               fontWeight: FontWeight.w400,
          //               fontSize: 8.sp),
          //         )
          //       ]),
          // ),
          trailing: Container(
              height: 57.h, width: 54.w, child: Image.asset("assets/cw.png")),
        ),
      ),
    );
  }
}
