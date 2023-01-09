import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Controller/Maincontrollers.dart';
import 'package:spoot_light/Controller/topicController.dart';
import 'package:spoot_light/Models/Service.dart';
import 'package:spoot_light/Screens/MainHomeScreen/MainHomeScreen.dart';
import 'package:spoot_light/Screens/ProfileScreens/SelectPlanScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class PickTopicScreen extends StatelessWidget {
  PickTopicScreen({super.key});

  List li = [
    // "Advanture",
    // "Climate",
    // "Handicraft",
    // "Writting",
    // "Beauty",
    // "Makeup",
    // "Fitness",
    // "Cosplay",
    // "Dancing",
    // "Singing",
    // "Astrology",
    // "Gardening",
    // "Collecting",
    // "Museums",
    // "New Age",
    // "News",
    // "Psychology",
    // "Relationships",
    // 'Sci-Fi',
    // 'Startup',
    // 'Storytelling',
    // 'Technology',
    // 'COVID-19',
    // 'language',
    // 'Nature',
    // 'Food',
    // 'Space',
    // 'Politics',
    // 'Culture',
    // 'Art',
    // 'Feminism',
    // 'Life',
    // 'Collecting',
    // 'Museums',
    // 'Casual',
    // 'Religion',
    // 'Humor',
    // 'Health',
    // 'Depression',
    // 'History',
    // 'Aviation',
    // 'Shopping',
    // 'Music',
    // 'Fashion',
    // 'Cars',
    // 'Architecture',
    // 'Television',
    // 'Photography',
    // 'Culture',
    // 'Art',
    // 'Fiction',
    // 'Reading',
    // 'Sports',
    // 'Cooking',
    // 'Masculinity',
    // 'Feminity',
    // 'Artist',
    // 'Movies'
  ];

  // bool selectTopics = [];

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.put(TopicController());
    return GetBuilder<TopicController>(
        init: TopicController(),
        builder: (_) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(children: [
                  10.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        width: 48.w,
                        height: 23.h,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: ConstColors.btnColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(43.r))),
                        child: Center(
                            child: "0/1"
                                .text
                                .size(12.sp)
                                .fontWeight(FontWeight.w500)
                                .make()),
                      )
                    ],
                  ),
                  31.h.heightBox,
                  "Pick some topics you are interested in"
                      .text
                      .fontWeight(FontWeight.w600)
                      .softWrap(true)
                      .size(24.sp)
                      .make(),
                  5.h.heightBox,
                  "We’ll use them to match others based on common interests."
                      .text
                      .fontWeight(FontWeight.w400)
                      .softWrap(true)
                      .lineHeight(2)
                      .size(16.sp)
                      .make(),
                  // ElevatedButton(
                  //     onPressed: () {
                  //       firestore_set("topic", "alltopics", {"alltopic": li});
                  //     },
                  //     child: Text("data")),
                  20.h.heightBox,

                  StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('topic')
                          .doc("alltopics")
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return LinearProgressIndicator();
                        }
                        li = snapshot.data!["alltopic"];
                        // return Text("${li}");

                        return GridView.count(
                            physics: ScrollPhysics(),
                            childAspectRatio: (270.w / 69.h),
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: List.generate(li.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  _.isselected(li[index].toString());
                                },
                                child: Container(
                                  height: 39.h,
                                  width: 170.w,
                                  decoration: BoxDecoration(
                                      gradient: _.selectTopics
                                                  .contains(li[index]) !=
                                              true
                                          ? LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: ConstColors.LwhiteColor)
                                          : LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: ConstColors.btnColor),
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.r))),
                                  child: Center(
                                    child: "${li[index]}"
                                        .text
                                        .fontWeight(FontWeight.w600)
                                        .softWrap(true)
                                        .size(16.sp)
                                        .make(),
                                  ),
                                ),
                              );
                            }));
                      }),
                  28.h.heightBox,
                  GestureDetector(
                    onTap: () {
                      if (_.selectTopics.isNotEmpty) {
                        firestore_update("user", currentUserData.uid,
                            {"selectedTopic": _.selectTopics});
                        Get.offAll(() => MainHomeScreen());
                      } else {
                        Get.snackbar(
                            "Pick some topics you are interested in", "");
                      }
                    },
                    child: Container(
                      height: 50.h,
                      width: 359.w,
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 6,
                                offset: Offset(0, 5))
                          ],
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: ConstColors.btnColor),
                          // Color.fromRGBO(115, 186, 197, 1)
                          borderRadius: BorderRadius.all(Radius.circular(11))),
                      child: Center(
                        child: "NEXT"
                            .text
                            .size(13.sp)
                            .fontWeight(FontWeight.w600)
                            .make(),
                      ),
                    ),
                  ),
                  22.h.heightBox,
                ]),
              ),
            ),
          );
        });
  }
}
