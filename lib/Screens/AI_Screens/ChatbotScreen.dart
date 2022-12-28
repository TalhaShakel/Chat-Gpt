import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/Background.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatBotScreen extends StatelessWidget {
  ChatBotScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AiBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "CHAT GPT",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Language model - text Da - vinci 003(most powerful)"
                    .text
                    .color(Colors.white)
                    .size(14.sp)
                    .fontWeight(FontWeight.w500)
                    .center
                    .softWrap(true)
                    .make(),
                ///////////////////////
                ///
                Container(
                  child: Column(
                    children: [
                      247.h.heightBox,
                      Container(
                          height: 216.h,
                          width: 350.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              "Examples"
                                  .text
                                  .color(Colors.white)
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w500)
                                  .center
                                  .softWrap(true)
                                  .make(),
                              " . 'Explain quantum computing in simple terms'"
                                  .text
                                  .color(Colors.white)
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w500)
                                  .center
                                  .softWrap(true)
                                  .make(),
                              " . →'Got any creative ideas for a 10 year old’s birthday?'"
                                  .text
                                  .color(Colors.white)
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w500)
                                  .center
                                  .softWrap(true)
                                  .make(),
                              "Capabilities"
                                  .text
                                  .color(Colors.white)
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w500)
                                  .center
                                  .softWrap(true)
                                  .make(),
                              " . Remembers what user said earlier in the conversation"
                                  .text
                                  .color(Colors.white)
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w500)
                                  .center
                                  .softWrap(true)
                                  .make(),
                              " . Allows user to provide follow-up corrections"
                                  .text
                                  .color(Colors.white)
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w500)
                                  .center
                                  .softWrap(true)
                                  .make(),
                              " . Trained to decline inappropriate requests"
                                  .text
                                  .color(Colors.white)
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w500)
                                  .center
                                  .softWrap(true)
                                  .make(),
                              "Limitations"
                                  .text
                                  .color(Colors.white)
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w500)
                                  .center
                                  .softWrap(true)
                                  .make(),
                              " . May occasionally generate incorrect information"
                                  .text
                                  .color(Colors.white)
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w500)
                                  .center
                                  .softWrap(true)
                                  .make(),
                              " . May occasionally produce harmful instructions or biased content"
                                  .text
                                  .color(Colors.white)
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w500)
                                  .center
                                  .softWrap(true)
                                  .make(),
                              " . Limited knowledge of world and events after 2021"
                                  .text
                                  .color(Colors.white)
                                  .size(12.sp)
                                  .fontWeight(FontWeight.w500)
                                  .center
                                  .softWrap(true)
                                  .make(),
                            ],
                          )),
                      219.h.heightBox,
                    ],
                  ),
                ),
                /////////////////////////////
                Column(
                  children: [
                    Container(
                      height: 31.h,
                      width: 172.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(19)),
                      ),
                      child: Center(
                        child: Text(
                          "I am here to see you",
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      height: 31.h,
                      width: 172.w,
                      decoration: BoxDecoration(
                        color: Color(0xffB0EFEC),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(19)),
                      ),
                      child: Center(
                        child: Text(
                          "I am here to see you",
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),

/////////////////////////////////
                Container(
                  height: 41.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(69))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: TextField(
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(12),
                              hintText: 'Ask anything...',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Container(
                        height: 41.h,
                        width: 41.h,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            Icons.send,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                20.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SHARE TO FEED",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "WORDS LEFT - 100k",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                20.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
