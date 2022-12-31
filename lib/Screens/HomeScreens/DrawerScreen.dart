import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

Drawer MainDrawer(BuildContext _, var scaffoldKey) {
  return Drawer(
    width: 297.w,
    // backgroundColor: Colors.white.withOpacity(0.8),
    backgroundColor: Color.fromRGBO(255, 255, 255, 0.77),
    child: Padding(
      padding: EdgeInsets.only(left: 21),
      child: SingleChildScrollView(
        child: Column(
          children: [
            49.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 53.h,
                  width: 53.w,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset("assets/dp.png"),
                ),
                10.w.widthBox,
                Text(
                  "Allison Becker",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                55.w.widthBox,
                GestureDetector(
                  onTap: () {
                    scaffoldKey.currentState!.closeDrawer();
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.grey,
                    size: 35,
                  ),
                ),
                10.w.widthBox,
              ],
            ),
            58.h.heightBox,
            Row(
              children: [
                Container(width: 20.w, height: 24.h, child: Icon(Icons.list_alt)
                    // Image.asset("assets/sc.png"),
                    ),
                15.w.widthBox,
                Text(
                  "To DO List",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      // color: Color(0xff75766E)
                      color: Colors.black),
                ),
              ],
            ),
            40.h.heightBox,
            Row(
              children: [
                Container(
                  width: 20.w,
                  height: 24.h,
                  child: Icon(
                    Icons.wallet_membership_rounded,
                    color: Color(0xff75766E),
                  ),
                ),
                15.w.widthBox,
                Text(
                  "Wallet",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff75766E)),
                ),
              ],
            ),
            40.h.heightBox,
            Row(
              children: [
                Container(
                  width: 20.w,
                  height: 24.h,
                  child: Image.asset("assets/sc.png"),
                ),
                15.w.widthBox,
                Expanded(
                  child: Text(
                    "Refer a friend to get more credits ",
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,

                        // color: Color(0xff75766E)
                        color: Color(0xff75766E)),
                  ),
                ),
              ],
            ),
            40.h.heightBox,
            Row(
              children: [
                Container(
                  width: 20.w,
                  height: 24.h,
                  child: Image.asset("assets/sc.png"),
                ),
                15.w.widthBox,
                Text(
                  "Privacy policy",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      // color: Color(0xff75766E)
                      color: Color(0xff75766E)),
                ),
              ],
            ),
            40.h.heightBox,
            Row(
              children: [
                Container(
                  width: 20.w,
                  height: 24.h,
                  child: Image.asset("assets/sc.png"),
                ),
                15.w.widthBox,
                Text(
                  "App Feature",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      // color: Color(0xff75766E)
                      color: Color(0xff75766E)),
                ),
              ],
            ),
            292.h.heightBox,
            Row(
              children: [
                Container(
                  width: 20.w,
                  height: 24.h,
                  child: Image.asset("assets/sc.png"),
                ),
                15.w.widthBox,
                Text(
                  "To DO List",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      // color: Color(0xff75766E)
                      color: Colors.black),
                ),
              ],
            ),
            96.h.heightBox,
          ],
        ),
      ),
    ),
  );
}
