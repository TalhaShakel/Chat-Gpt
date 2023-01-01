import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/Background.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Screens/AI_Screens/ChatbotScreen.dart';
import 'package:spoot_light/Screens/AI_Screens/AIbutton.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateAIShare extends StatelessWidget {
  CreateAIShare({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _textController = TextEditingController();
  @override
  void dispose() {
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AiBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // leading: ,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                    height: 512.h,
                    width: 390.w,
                    child: Image.asset(
                      "assets/RJ.png",
                      fit: BoxFit.cover,
                    )),
                16.h.heightBox,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "DALLE - BY OPEN AI",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "CREDITS - 23",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      35.h.heightBox,
                      Container(
                        height: 41.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(69))),
                        child: Row(
                          children: [
                            Container(
                                height: 40.h,
                                width: 96.w,
                                decoration: BoxDecoration(
                                    color: Color(0xff27555d),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(69))),
                                child: Center(
                                  child: Text(
                                    "GENERATE",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800),
                                  ),
                                )),
                            SizedBox(
                                width: 194.w,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: _textController,
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      23.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "SHARE TO"
                              .text
                              .color(Colors.white)
                              .size(14.sp)
                              .fontWeight(FontWeight.w500)
                              .center
                              .softWrap(true)
                              .make(),
                          180.w.widthBox,
                          Icon(
                            Icons.download_done,
                            color: Colors.white,
                          ),
                          22.w.widthBox,
                          Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      61.h.heightBox,
                      Container(
                        height: 41.h,
                        width: 350.w,
                        child: AIButton(
                            buttonName: "ADD MORE CREDITS",
                            funcname: () {},
                            colorButton: Colors.transparent),
                      ),
                      20.h.heightBox,
                      Container(
                        height: 41.h,
                        width: 350.w,
                        child: AIButton(
                            buttonName: "ADD MORE CREDITS",
                            funcname: () {
                              // Get.to(() => ChatBotScreen());
                            },
                            colorButton: Colors.transparent),
                      ),
                      26.h.heightBox,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
