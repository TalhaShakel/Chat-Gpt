import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/Background.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Screens/AI_Screens/CreateAIScreen.dart';
import 'package:spoot_light/Screens/AI_Screens/AIbutton.dart';
import 'package:velocity_x/velocity_x.dart';

class AIScreen extends StatelessWidget {
  const AIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AiBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                85.h.heightBox,
                "DALL-E (stylized as DALL·E) and DALL-E 2 are deep learning models developed by OpenAI to generate digital images from natural language descriptions, called 'prompts'"
                    .text
                    .color(Colors.white)
                    .size(12.sp)
                    .fontWeight(FontWeight.w500)
                    .center
                    .softWrap(true)
                    .make(),
                50.h.heightBox,
                Container(
                  height: 41.h,
                  width: 359.w,
                  // decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.white),
                  //     borderRadius: BorderRadius.all(Radius.circular(70))),
                  child: AIButton(
                      buttonName: "CREATE IMAGES WITH ARTEMIS",
                      funcname: () {},
                      colorButton: Colors.transparent),
                ),
                60.h.heightBox,
                Container(
                  height: 1.h,
                  width: 354.w,
                  color: Colors.white,
                ),
                60.h.heightBox,
                "One of the largest and most powerful language processing AI models to date, with 175 billion parameters. Chat GPT is a highly capable chatbot."
                    .text
                    .color(Colors.white)
                    .size(12.sp)
                    .fontWeight(FontWeight.w500)
                    .center
                    .softWrap(true)
                    .make(),
                50.h.heightBox,
                Container(
                  height: 41.h,
                  width: 359.w,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: AIButton(
                      buttonName: "CHAT WITH MERLIN",
                      funcname: () {},
                      colorButton: Colors.transparent),
                ),
                60.h.heightBox,
                Container(
                  height: 1.h,
                  width: 354.w,
                  color: Colors.white,
                ),
                "Be the first one to get hands on the disruptive ai when they launch. More generative ai technology are on its way here. Stay tuned!"
                    .text
                    .color(Colors.white)
                    .size(12.sp)
                    .fontWeight(FontWeight.w500)
                    .center
                    .softWrap(true)
                    .make(),
                50.h.heightBox,
                Container(
                  height: 41.h,
                  width: 359.w,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: AIButton(
                      buttonName: "COMING SOON",
                      funcname: () {
                        Get.to(() => CreateAIShare());
                      },
                      colorButton: Colors.transparent),
                ),
                84.h.heightBox,
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
