import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: "Micheal Lurk".text.make(),
      ),
      body: Column(
        children: [
          comment_tab(),
          Padding(
            padding: EdgeInsets.only(left: Get.width / 9),
            child: comment_tab(),
          ),
          comment_tab(),
          comment_tab(),
          Padding(
            padding: EdgeInsets.only(left: Get.width / 9),
            child: comment_tab(),
          ),
          Padding(
            padding: EdgeInsets.only(left: Get.width / 9),
            child: comment_tab(),
          ),
          comment_tab(),
        ],
      ),
    );
  }

  ListTile comment_tab() {
    return ListTile(
      leading: Image.asset("assets/comentuser.png"),
      title: "Lana".text.size(14).white.make(),
      subtitle: Column(
        children: [
          "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina"
              .text
              .size(12)
              .white
              .make(),
          Row(
            children: [
              "12m"
                  .text
                  .color(Color.fromRGBO(168, 168, 168, 1))
                  .size(10)
                  // .white
                  .make(),
              8.widthBox,
              "Reply"
                  .text
                  .size(10)
                  .color(Color.fromRGBO(168, 168, 168, 1))
                  // .white
                  .make(),
            ],
          ),
        ],
      ),
    );
  }
}
