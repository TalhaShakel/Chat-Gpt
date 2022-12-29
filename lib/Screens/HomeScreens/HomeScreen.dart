import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            Container(
              height: 40.h,
              width: 333.w,
              child: TextFormField(
                  decoration: InputDecoration(
                filled: true,
                fillColor: ConstColors.CircleColor,
                contentPadding: EdgeInsets.all(10),
                hintText: "Search  here",
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ConstColors.CircleColor, width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                ////////////////////////////////
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ConstColors.CircleColor, width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
