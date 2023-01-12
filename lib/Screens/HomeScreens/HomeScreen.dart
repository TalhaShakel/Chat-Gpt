import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Models/Service.dart';
import 'package:spoot_light/Screens/Comments/Comments.dart';
import 'package:spoot_light/Screens/HomeScreens/DrawerScreen.dart';
import 'package:spoot_light/Screens/HomeScreens/HomebottomSheet.dart';
import 'package:spoot_light/Screens/PostScreen/MemorySheet.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timeago/timeago.dart' as timeago;

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      ////////////////////////
      drawer: MainDrawer(context, scaffoldKey),
      ///////////////
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        // automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: (() {
              if (scaffoldKey.currentState!.isDrawerOpen) {
                scaffoldKey.currentState!.closeDrawer();
              } else {
                scaffoldKey.currentState!.openDrawer();
              }
            }),
            child: Image.asset("assets/m.png")),
        title: Row(children: [
          Text(
            "Good Morning, ",
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          Text(
            "${currentUserData.userName}",
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        currentUserData.userPicture.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.bottomSheet(MemorySheet());
                        },
                        child: "I want to do nothing."
                            .text
                            .size(18.sp)
                            .fontWeight(FontWeight.w500)
                            .make(),
                      ),
                      Container(
                          width: 94.w,
                          height: 12,
                          child: Image.asset("assets/li.PNG"))
                    ],
                  ),
                  60.w.widthBox,
                  GestureDetector(
                    onTap: () {
                      // Get.bottomSheet(bottomSheetScreen());
                    },
                    child: Container(
                        height: 25.h,
                        width: 25.w,
                        child: Image.asset("assets/cc.PNG")),
                  )
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
              StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection('posts').snapshots(),
                builder: (context,
                    AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                        snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (ctx, index) {
                        print(snapshot.data!.docs[index].data());
                        // snapshot.data!.docs[index].data();
                        return Postcard(
                            snap: snapshot.data!.docs[index].data());
                      }
                      // Container(
                      //   margin: EdgeInsets.symmetric(
                      //     horizontal: width > webScreenSize ? width * 0.3 : 0,
                      //     vertical: width > webScreenSize ? 15 : 0,
                      //   ),
                      //   child: PostCard(
                      //     snap: snapshot.data!.docs[index].data(),
                      //   ),
                      // ),
                      );
                },
              ),
              10.h.heightBox,
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

class Postcard extends StatelessWidget {
  final snap;

  const Postcard({
    Key? key,
    required this.snap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime past = DateTime.now()
        .subtract(Duration(days: snap['datePublished'].toDate().day));

    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 37.h,
                width: 34.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    snap["profImage"].toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              11.w.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        snap["username"].toString(),
                        // overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      9.w.widthBox,
                      Text(
                        // timeago.format(past, locale: 'en_short'),
                        DateFormat.yMMMd()
                            .format(snap['datePublished'].toDate()),
                        // snap["datePublished"].toDate().toString(),
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
                    child: snap["subhead"]
                        .toString()
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
                      child: Image.network(
                        snap["postUrl"].toString(),
                        // fit: BoxFit.cover,
                        fit: BoxFit.cover,
                      )),
                  10.h.heightBox,
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          await likePost(snap["postId"],
                              currentUserData.uid.toString(), snap['likes']);
                        },
                        child: Container(
                            height: 17.h,
                            width: 17.w,
                            child: Image.asset("assets/lk.png",
                                fit: BoxFit.cover,
                                color:
                                    snap['likes'].contains(currentUserData.uid)
                                        ? Colors.red
                                        : ConstColors.IconColor)),
                      ),
                      // Icon(
                      //   Icons.thumb_up_outlined,
                      //   color: Color(0xff6B6D7D),
                      //   size: 20,
                      // ),
                      5.w.widthBox,
                      Text(
                        "${snap["likes"].length}".toString(),
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: ConstColors.IconColor),
                      ),
                      29.w.widthBox,
                      // Icon(
                      //   Icons.thumb_up_outlined,
                      //   color: Color(0xff6B6D7D),
                      //   size: 20,
                      // ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => PostCommentsScreen(
                                postId: snap['postId'].toString(),
                              ));
                        },
                        child: Container(
                            height: 15.h,
                            width: 15.w,
                            child: Image.asset(
                              "assets/ms.png",
                              color: ConstColors.IconColor,
                            )),
                      ),

                      5.w.widthBox,
                      Text(
                        "24",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: ConstColors.IconColor),
                      ),
                      29.w.widthBox,
                      // Icon(
                      //   Icons.thumb_up_outlined,
                      //   color: Color(0xff6B6D7D),
                      //   size: 20,
                      // ),
                      Container(
                          height: 15.h,
                          width: 15.w,
                          child: Image.asset(
                            "assets/sh.png",
                            color: ConstColors.IconColor,
                          )),
                      5.w.widthBox,
                      Text(
                        "Share",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: ConstColors.IconColor),
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
      ),
    );
  }
}
