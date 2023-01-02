import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Controller/Maincontrollers.dart';
import 'package:velocity_x/velocity_x.dart';

class FollowersScreen extends StatelessWidget {
  FollowersScreen({super.key});

  // int index = 0;
  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MainController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
        centerTitle: true,
        leading: Image.asset("assets/img2.png"),
        title: "Micheal Lurk".text.make(),
        actions: [Icon(Icons.search)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GetBuilder<MainController>(builder: (controller) {
          return Column(children: [
            15.sp.heightBox,
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Text(
                      "101 Followers",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  15.widthBox,
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Text(
                      "24 Following",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  15.widthBox,
                  GestureDetector(
                    onTap: () {
                    
                    },
                    child: Text(
                      "Subscriptions",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
              height: 60,
              width: MediaQuery.of(context).size.width * 0.93,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
            10.heightBox,
            ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color(0xff764abc),
                  child: Image.asset(
                    "assets/img2.png",
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      "Lana",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    15.widthBox,
                    controller.index == 0
                        ? Text(
                            "Follow",
                            style: TextStyle(color: Colors.blue, fontSize: 14),
                          )
                        : Text(""),
                  ],
                ),
                subtitle: Text(
                  "Hai, whats up bro. hayu atuh hangout dei jang Sabrina",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                trailing: controller.index == 0
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(255, 255, 255, 0.15),
                        ),
                        child: Text("Remove"),
                        onPressed: () {},
                      )
                    : (controller.index == 1)
                        ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(255, 255, 255, 0.15),
                            ),
                            child: Text("Following"),
                            onPressed: () {},
                          )
                        : ElevatedButton(
                            onPressed: () {}, child: Text("Subscribe"))),
            Divider(color: Colors.grey[350], height: 2),
          ]);
        }),
      ),
    );
  }
}
