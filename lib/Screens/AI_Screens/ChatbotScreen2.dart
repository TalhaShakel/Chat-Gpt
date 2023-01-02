import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Controller/Maincontrollers.dart';
import 'package:spoot_light/Screens/AI_Screens/ChatbotScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatBot2 extends StatelessWidget {
  ChatBot2({super.key});

  var _ = MainController.instance;

  // int _selectIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[ChatBotScreen()];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        ///////////////////////////////////////////////////
        body: _widgetOptions[controller.index],
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: 
            
            Column(
              children: [
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
                        child: TextFormField(
                          // controller: ,
                          onFieldSubmitted: (prompt) {
                            _.post(prompt);
                          },
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(12),
                              hintText: 'Ask anything...',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Get.to(() => WalletScreen());
                        },
                        child: Container(
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
              ]
            ),
            
            ),
      );
    });
  }
}
