import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Screens/PostScreen/CreateAnAudio2.dart';
import 'package:velocity_x/velocity_x.dart';

class AddPeopleAudioRoom extends StatefulWidget {
  const AddPeopleAudioRoom({super.key});

  @override
  State<AddPeopleAudioRoom> createState() => _AddPeopleAudioRoomState();
}

class _AddPeopleAudioRoomState extends State<AddPeopleAudioRoom> {
  bool selectuser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      appBar: AppBar(
          backgroundColor: Color(0xff1d2931),
          elevation: 0,
          title: Text(
            "Add people",
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
              onTap: () {
                Get.to(() => CreateAnAudioRoom2());
              },
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
                      hintText: "Find people",
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
                15.h.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      suggestprofile(),
                      suggestprofile(),
                      suggestprofile(),
                      suggestprofile(),
                      suggestprofile(),
                      suggestprofile(),
                      suggestprofile(),
                    ],
                  ),
                ),
                25.h.heightBox,

                Column(
                  children: [
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

  Padding suggestprofile() {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: Container(
        height: 54.h,
        width: 54.w,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 5,
                  //     blurRadius: 7,
                  //     offset:
                  //         Offset(0, 3), // changes position of shadow
                  //   ),
                  // ],
                  ),
              height: 54.h,
              width: 54.w,
              child: Image.asset("assets/p.png"),
            ),
            Positioned(
              bottom: 3,
              right: 0,
              child: Container(
                height: 18.h,
                width: 18.w,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 4,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ], color: Colors.white, shape: BoxShape.circle),
                child: Icon(
                  Icons.close,
                  size: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding communityprofile() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
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
          onTap: () {
            setState(() {
              selectuser != selectuser;
            });
          },
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
