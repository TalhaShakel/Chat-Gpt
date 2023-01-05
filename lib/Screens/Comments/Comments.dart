import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Comment",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
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
      ),
      body: Column(
        children: [
          25.h.heightBox,
          comment_tab(),
          Padding(
            padding: EdgeInsets.only(left: Get.width / 9),
            child: comment_tab(),
          ),
          comment_tab(),
          comment_tab(),
          Padding(
            padding: EdgeInsets.only(left: Get.width / 9),
            child: comment_tab(),
          ),
          Padding(
            padding: EdgeInsets.only(left: Get.width / 9),
            child: comment_tab(),
          ),
          comment_tab(),
        ],
      ),
    );
  }

  ListTile comment_tab() {
    return ListTile(
      leading: Container(
        height: 43.h,
        width: 43.w,
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/pp.png"),
          // radius: 43.r,
        ),
      ),
      title: RichText(
        text: TextSpan(
            text: 'Lana',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp),
            children: [
              //TextSpan(),
              TextSpan(
                text:
                    " Hai, whats’up bro. hayu atuh hangout dei jang Hai, whats’up bro. hayu atuh hangout dei jang ",
                style: TextStyle(
                    color: Color(0xff525252),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp),
              )
            ]),
      ),
      subtitle: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.w),
        child: Row(
          children: [
            "Like"
                .text
                .color(Colors.black)
                .size(10.sp)
                // .white
                .make(),
            12.w.widthBox,
            "12m"
                .text
                .color(Colors.black)
                .size(10.sp)
                // .white
                .make(),
            12.w.widthBox,
            "Reply"
                .text
                .size(10.sp)
                .color(Colors.black)
                // .white
                .make(),
          ],
        ),
      ),
    );
  }
}
