import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateCommunites2 extends StatelessWidget {
  CreateCommunites2({super.key});

  bool selectuser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      appBar: AppBar(
          backgroundColor: Color(0xff1d2931),
          elevation: 0,
          title: Text(
            "Create a Coummunity",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
          ),
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back)),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {},
              child: Center(
                child: Text(
                  "Next",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            21.w.widthBox,
          ]),
      body: SingleChildScrollView(
          child: Column(
        children: [
          26.h.heightBox,
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
              child: Column(children: [
                22.h.heightBox,
                Container(
                  height: 40.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: ConstColors.textfieldColor,
                      contentPadding: EdgeInsets.all(10),
                      //////////////////////////////////////////
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ConstColors.CircleColor, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ConstColors.textfieldColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                          fontSize: 8.sp,
                          color: Color.fromRGBO(155, 155, 155, 1)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(115.r),
                      ),

                      // errorText: _errorText,
                    ),
                  ),
                ),
                ////////////////////////////////////////

                5.h.heightBox,

                Column(
                  children: [
                    communityprofile(),
                    communityprofile(),
                    communityprofile(),
                    communityprofile(),
                    communityprofile(),
                    communityprofile(),
                  ],
                ),
                //////////////////////////////////////////////////////////
              ]),
            ),
          )
        ],
      )),
    );
  }

  Padding communityprofile() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.w),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Image.asset(
            "assets/p.png",
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          "Suami Orangs",
          style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
        ),
        trailing: GestureDetector(
          onTap: () {},
          child: Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              color: selectuser == true ? Colors.black : Colors.white,
              border: Border.all(color: Colors.black),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
