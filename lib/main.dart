import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Screens/AI_Screens/AIScreen.dart';
import 'package:spoot_light/Screens/HomeScreens/HomeScreen.dart';
import 'package:spoot_light/Screens/ProfileScreens/AboutUserInfoScreen.dart';
import 'package:spoot_light/SplashScreen.dart';
import 'package:spoot_light/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Future<FirebaseApp> _initilization =
      Firebase.initializeApp(); //firebase

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            builder: EasyLoading.init(),
            home: SplashScrren(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
