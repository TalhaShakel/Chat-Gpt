import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // drawer: Drawer(),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Drawer(),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (() {
            Get.to(() => Drawer(
                  child: Container(
                      // color: Colors.black,
                      ),
                ));
          }),
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Row(children: [
          Text(
            "Good Morning, ",
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          Text(
            "John",
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: Colors.purple),
          )
        ]),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.h.heightBox,
              Container(
                height: 40.h,
                width: 349.w,
                child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: ConstColors.CircleColor,
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Search",
                        hintStyle:
                            TextStyle(color: Colors.grey[400], fontSize: 8.sp),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        border: InputBorder.none)),
              ),
              16.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45.h,
                    width: 44.w,
                    child: Image.asset("assets/pp.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      "I want to do nothing."
                          .text
                          .size(18.sp)
                          .fontWeight(FontWeight.w500)
                          .make(),
                      Container(
                          width: 94.w,
                          height: 12,
                          child: Image.asset("assets/li.PNG"))
                    ],
                  ),
                  60.w.widthBox,
                  Container(
                      height: 25.h,
                      width: 25.w,
                      child: Image.asset("assets/cc.PNG"))
                ],
              ),
              14.h.heightBox,
              "Memories".text.size(22.sp).fontWeight(FontWeight.w600).make(),
              25.h.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      MemoryContainer(),
                      MemoryContainer(),
                      MemoryContainer(),
                      MemoryContainer(),
                      MemoryContainer(),
                      MemoryContainer(),
                    ],
                  ),
                ),
              ),
              12.h.heightBox,
              "Feed".text.size(22.sp).fontWeight(FontWeight.w600).make(),
              30.h.heightBox,
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 37.h,
                      width: 34.w,
                      child: Image.asset("assets/pp.png"),
                    ),
                    11.w.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Allison Becker",
                              // overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            9.w.widthBox,
                            Text(
                              "12m",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            // 40.w.widthBox,
                          ],
                        ),
                        3.h.heightBox,
                        Container(
                          height: 34.h,
                          width: 230.w,
                          child:
                              "Today I've amazing moment, when I went to my office, I found my old watch in the ..."
                                  .text
                                  .color(Colors.black)
                                  .softWrap(true)
                                  // .overflow(TextOverflow.ellipsis)
                                  .make(),
                        ),

                        // Text(
                        //   "Today I've amazing moment, when I went to my office, I found my old watch in the ...",
                        //   style: TextStyle(
                        //       fontSize: 12.sp,
                        //       fontWeight: FontWeight.w500,
                        //       color: Colors.black),
                        //   softWrap: true,
                        //   overflow: TextOverflow.ellipsis,
                        // ),

                        15.h.heightBox,
                        Container(
                            height: 216.h,
                            width: 250.w,
                            child: Image.asset(
                              "assets/post.png",
                              fit: BoxFit.cover,
                            )),
                        10.h.heightBox,
                        Row(
                          children: [
                            Icon(
                              Icons.thumb_up_outlined,
                              color: Color(0xff6B6D7D),
                              size: 20,
                            ),
                            5.w.widthBox,
                            Text(
                              "1201",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            29.w.widthBox,
                            Icon(
                              Icons.thumb_up_outlined,
                              color: Color(0xff6B6D7D),
                              size: 20,
                            ),
                            5.w.widthBox,
                            Text(
                              "24",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            29.w.widthBox,
                            Icon(
                              Icons.thumb_up_outlined,
                              color: Color(0xff6B6D7D),
                              size: 20,
                            ),
                            5.w.widthBox,
                            Text(
                              "Share",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: PopupMenuButton(
                        icon: Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'edit',
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            )
                          ];
                        },
                        onSelected: (String value) {
                          print('You Click on po up menu item');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding MemoryContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Container(
        height: 110.h,
        width: 74.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 11,
              offset: Offset(3, 5), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Container(
              height: 98.h,
              width: 74.w,
              child: Image.asset(
                "assets/pic.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              // bottom: 0,
              left: 22,
              right: 22,
              top: 83,
              child: Container(
                width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: Colors.white)),
                child: Image.asset(
                  "assets/pp.png",
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
