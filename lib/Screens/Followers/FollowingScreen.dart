import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      appBar: AppBar(
        backgroundColor: Color(0xff1d2931),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Following",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
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
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 25.sp,
          ),
          20.w.widthBox,
        ],
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
                      10.h.heightBox,
                      Container(
                        height: 48.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular(31.r))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.w, horizontal: 8.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              followbuttons("Followers"),
                              followbuttons("Following"),
                              followbuttons("Subscriptions"),
                            ],
                          ),
                        ),
                      ),
                      ////////////
                      29.h.heightBox,
                      ListTile(
                        leading: Container(
                          height: 43.h,
                          width: 43.w,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/pp.png"),
                            // radius: 43.r,
                          ),
                        ),
                        title: Row(
                          children: [
                            Text(
                              "Lana",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp),
                            ),
                            15.widthBox,
                            Text(
                              "Follow",
                              style: TextStyle(
                                  color: Color(0xff6B6D7D), fontSize: 12.sp),
                            )
                          ],
                        ),
                        subtitle: RichText(
                          text: TextSpan(
                              text:
                                  'Hai, whats’up bro. hayu atuh hangout dei jang Sabrina',
                              style: TextStyle(
                                  color: Color(0xff606060), fontSize: 10.sp),
                              children: [
                                WidgetSpan(
                                  child: SizedBox(width: 4.w),
                                ),
                                TextSpan(
                                  text: "12m",
                                  style: TextStyle(
                                      color: Color(0xff606060),
                                      fontSize: 10.sp),
                                )
                              ]),
                        ),
                        // subtitle: Text(
                        //   "Hai, whats up bro. hayu atuh hangout dei jang Sabrina",
                        //   style:
                        //       TextStyle(color: Color(0xff606060), fontSize: 10),
                        // ),
                        trailing: SizedBox(
                          height: 22.h,
                          width: 71.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[300]),
                            child: Text(
                              "Following",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Divider(color: Colors.grey[350], height: 2),
                    ]),
              )),
        ],
      )),
    );
  }

  Container followbuttons(var btnName) {
    return Container(
      width: 100.w,
      height: 32.h,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: ConstColors.btnColor),
          borderRadius: BorderRadius.all(Radius.circular(43.r))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "$btnName".text.size(12.sp).fontWeight(FontWeight.w500).make(),
          8.w.widthBox,
          Container(
            height: 6.h,
            width: 6.w,
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          )
        ],
      ),
    );
  }
}
