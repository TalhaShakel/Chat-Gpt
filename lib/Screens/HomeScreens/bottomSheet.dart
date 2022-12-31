import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Controller/Maincontrollers.dart';
import 'package:velocity_x/velocity_x.dart';

class bottomSheetScreen extends StatelessWidget {
  bottomSheetScreen({
    Key? key,
  }) : super(key: key);
  ////////////topics list
  List li = [
    "Advanture",
    "Climate",
    "Handicraft",
    "Writting",
    "Beauty",
    "Makeup",
    "Fitness",
    "Cosplay",
    "Dancing",
    "Singing",
    "Astrology",
    "Gardening",
    "Collecting",
    "Museums",
    "New Age",
    "News",
    "Psychology",
    "Relationships"
  ];

  bool selectTopics = false;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());
    return Container(
      height: 779.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(19)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(children: [
            21.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 48.w,
                  height: 23.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: ConstColors.btnColor),
                      borderRadius: BorderRadius.all(Radius.circular(43.r))),
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
            10.h.heightBox,
            "We’ll use them to refine your feed with the selected topics"
                .text
                .fontWeight(FontWeight.w400)
                .softWrap(true)
                .lineHeight(1.5)
                .size(16.sp)
                .make(),
            20.h.heightBox,
            GetBuilder<MainController>(builder: (controller) {
              return GridView.count(
                  childAspectRatio: (270.w / 69.h),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: List.generate(18, (index) {
                    return Container(
                      height: 39.h,
                      width: 170.w,
                      decoration: BoxDecoration(
                          gradient: controller.istopic(selectTopics) != true
                              ? LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: ConstColors.LwhiteColor)
                              : LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: ConstColors.btnColor),
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Center(
                        child: "${li[index]}"
                            .text
                            .fontWeight(FontWeight.w600)
                            .softWrap(true)
                            .size(16.sp)
                            .make(),
                      ),
                    );
                  }));
            }),
            20.h.heightBox,
          ]),
        ),
      ),
    );
  }
}
