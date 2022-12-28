import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AiBackground extends StatelessWidget {
  var child;

  AiBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromARGB(255, 108, 173, 185),
              Color.fromARGB(255, 31, 51, 59),
              // Color.fromRGBO(115, 186, 197, 1)
            ],
          ),
        ),
        child: child

        // Scaffold(
        //   backgroundColor: Colors.transparent,
        //   appBar: AppBar(
        //     elevation: 0,
        //     backgroundColor: Colors.transparent,
        //   ),
        //   body: ListView(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           height: 500,
        //           width: 200,
        //           color: Colors.black,
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           height: 500,
        //           width: 200,
        //           color: Colors.black,
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           height: 500,
        //           width: 200,
        //           color: Colors.black,
        //         ),
        //       )
        //     ],
        //   ),
        // ),

        );
  }
}
