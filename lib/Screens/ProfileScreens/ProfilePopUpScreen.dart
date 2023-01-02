import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePopUp extends StatelessWidget {
  const ProfilePopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Michael Lurk ",
            style: TextStyle(
                color: Colors.black,
                fontSize: 32.sp,
                fontWeight: FontWeight.w800),
          ),
          19.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 15,
                color: Color(0xffFFA600),
              ),
              Text(
                "Mumbai, patna",
                style: TextStyle(color: Colors.black, fontSize: 10.sp),
              ),
            ],
          ),
          20.h.heightBox,
          Row(children: [
            Container(
              
            )
          ],)
        ],
      ),
    );
  }
}
