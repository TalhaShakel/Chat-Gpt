// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:spoot_light/Constants/ColorConstants.dart';
// import 'package:velocity_x/velocity_x.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Constants/utils.dart';
import 'package:spoot_light/Models/Service.dart';
import 'package:velocity_x/velocity_x.dart';

class PostCommentsScreen extends StatelessWidget {
  final postId;
  PostCommentsScreen({super.key, required this.postId});
  TextEditingController commentEditingController = TextEditingController();

  void sendpostComment(String uid, String name, String profilePic) async {
    try {
      String res = await sendFuncPostComment(
        postId,
        commentEditingController.text.trim(),
        uid,
        name,
        profilePic,
      );
      commentEditingController.clear();

      if (res != 'success') {
        showSnackBar("", res);
      }
    } catch (err) {
      showSnackBar(
        "",
        err.toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Comment",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            9.w.widthBox,
            Container(
              height: 19.h,
              width: 19.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: ConstColors.CircleColor),
              child: Center(
                child: Text(
                  "23",
                  style: TextStyle(
                      color: Color(0xff6B6D7D),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('posts')
                .doc(postId)
                .collection('comments')
                .snapshots(),
            builder: (context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (ctx, index) => postCommentsCard(
                  snapshot.data!.docs[index],
                ),
              );
            },
          ),
          // postcomments(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Container(
                    width: 270.w,
                    height: 40.h,
                    child: TextField(
                      controller: commentEditingController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ConstColors.textfieldColor,
                        prefixIcon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.all(10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstColors.CircleColor, width: 1),
                          borderRadius: BorderRadius.circular(68),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ConstColors.textfieldColor),
                          borderRadius: BorderRadius.circular(68),
                        ),
                        hintText: "Add a comment...",
                        hintStyle: TextStyle(color: Color(0xffAAAAAA)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(68),
                        ),
                        // errorText: _errorText,
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      sendpostComment(
                        currentUserData.uid.toString(),
                        currentUserData.userName.toString(),
                        currentUserData.userPicture.toString(),
                      );
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                      child: Icon(
                        Icons.play_arrow_outlined,
                        color: Colors.white,
                        size: 25.sp,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
          // 10.heightBox
        ],
      ),
    );
  }

  postCommentsCard(snap) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.w),
      child: ListTile(
        leading: Container(
          height: 43.h,
          width: 43.w,
          child: CircleAvatar(
            backgroundImage: NetworkImage("${snap['profilePic']}"),
            // radius: 43.r,
          ),
        ),
        title: RichText(
          text: TextSpan(
              text: '${snap["name"]} ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
              children: [
                TextSpan(
                  text: "${snap["text"]}",
                  style: TextStyle(
                      color: Color(0xff525252),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp),
                )
              ]),
        ),
        // subtitle: Text(),
      ),
    );
  }
}


// class CommentsScreen extends StatelessWidget {
//   const CommentsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      //   leading: GestureDetector(
      //     onTap: () {
      //       Get.back();
      //     },
      //     child: Icon(
      //       Icons.arrow_back,
      //       color: Colors.black,
      //     ),
      //   ),
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         "Comment",
      //         style: TextStyle(
      //             fontSize: 20.sp,
      //             color: Colors.black,
      //             fontWeight: FontWeight.w500),
      //       ),
      //       9.w.widthBox,
      //       Container(
      //         height: 19.h,
      //         width: 19.w,
      //         decoration: BoxDecoration(
      //             shape: BoxShape.circle, color: ConstColors.CircleColor),
      //         child: Center(
      //           child: Text(
      //             "23",
      //             style: TextStyle(
      //                 color: Color(0xff6B6D7D),
      //                 fontSize: 10.sp,
      //                 fontWeight: FontWeight.w600),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
//       body: Column(
//         children: [
//           25.h.heightBox,
//           comment_tab(),
//           Padding(
//             padding: EdgeInsets.only(left: Get.width / 9),
//             child: comment_tab(),
//           ),
//           comment_tab(),
//           comment_tab(),
//           Padding(
//             padding: EdgeInsets.only(left: Get.width / 9),
//             child: comment_tab(),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: Get.width / 9),
//             child: comment_tab(),
//           ),
//           comment_tab(),
//         ],
//       ),
//     );
//   }

//   ListTile comment_tab() {
//     return ListTile(
//       leading: Container(
//         height: 43.h,
//         width: 43.w,
//         child: CircleAvatar(
//           backgroundImage: AssetImage("assets/pp.png"),
//           // radius: 43.r,
//         ),
//       ),
//       title: RichText(
//         text: TextSpan(
//             text: 'Lana',
//             style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w600,
//                 fontSize: 16.sp),
//             children: [
//               //TextSpan(),
//               TextSpan(
//                 text:
//                     " Hai, whats’up bro. hayu atuh hangout dei jang Hai, whats’up bro. hayu atuh hangout dei jang ",
//                 style: TextStyle(
//                     color: Color(0xff525252),
//                     fontWeight: FontWeight.w400,
//                     fontSize: 12.sp),
//               )
//             ]),
//       ),
//       subtitle: Padding(
//         padding: EdgeInsets.symmetric(vertical: 5.w),
//         child: Row(
//           children: [
//             "Like"
//                 .text
//                 .color(Colors.black)
//                 .size(10.sp)
//                 // .white
//                 .make(),
//             12.w.widthBox,
//             "12m"
//                 .text
//                 .color(Colors.black)
//                 .size(10.sp)
//                 // .white
//                 .make(),
//             12.w.widthBox,
//             "Reply"
//                 .text
//                 .size(10.sp)
//                 .color(Colors.black)
//                 // .white
//                 .make(),
//           ],
//         ),
//       ),
//     );
//   }
// }
