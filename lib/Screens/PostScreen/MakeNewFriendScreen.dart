import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class MakeNewFriends extends StatelessWidget {
  const MakeNewFriends({super.key});

  // @override
  // void initState() {
  //   super.initState();

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      appBar: AppBar(
        backgroundColor: Color(0xff1d2931),
        elevation: 0,
        title: Text(
          "Make new friends",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          hintText: "Find Users",
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
                    20.h.heightBox,
                    Container(
                      height: 192.h,
                      width: 165.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mf.png"),
                              fit: BoxFit.cover),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.r))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 26.h,
                            width: 83.w,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(33.r))),
                            child: Center(
                              child: Text(
                                "16 KM Away",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          7.h.heightBox,
                          Text(
                            "Dina Ammy",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "BERLIN",
                            style: TextStyle(
                                letterSpacing: 8,
                                fontSize: 12.sp,
                                color: Color(0xffC0C0C0),
                                fontWeight: FontWeight.w600),
                          ),
                          10.h.heightBox,
                        ],
                      ),
                    ),
                    ///////////////////////////
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 81.h,
                          width: 390.w,
                          child: Image.asset("assets/mf2.png"),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      )),
    );
  }
}
