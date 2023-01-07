import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "User Agrement",
          style: TextStyle(
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Column(
          children: [
            62.h.heightBox,
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
              ),
            ),
            20.h.heightBox,
            Text(
              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
              ),
            ),
            20.h.heightBox,
            Text(
              "ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper dia auctor volutpat quis.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
