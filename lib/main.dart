import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Controller/Maincontrollers.dart';
import 'package:spoot_light/Screens/AI_Screens/AIScreen.dart';
import 'package:spoot_light/Screens/AI_Screens/WalletScreen.dart';
import 'package:spoot_light/Screens/AudioRoomScreens/AudioRoomScreen.dart';
import 'package:spoot_light/Screens/AudioRoomScreens/AudioSpaceComment.dart';
import 'package:spoot_light/Screens/AudioRoomScreens/AudioSpaceScreen.dart';
import 'package:spoot_light/Screens/AudioRoomScreens/MyAudioRoomHost.dart';
import 'package:spoot_light/Screens/AudioRoomScreens/RoomChatScreen.dart';
import 'package:spoot_light/Screens/Chat/ChatAllMessage.dart';
import 'package:spoot_light/Screens/Chat/ChatCreateCommunities.dart';
import 'package:spoot_light/Screens/Chat/ChatScreen.dart';
import 'package:spoot_light/Screens/Chat/CommunityChatScreen.dart';
import 'package:spoot_light/Screens/Chat/CreateCommAddData.dart';
import 'package:spoot_light/Screens/Chat/CreateCommunities2.dart';
import 'package:spoot_light/Screens/Chat/chat.dart';
import 'package:spoot_light/Screens/Comments/Comments.dart';
import 'package:spoot_light/Screens/Followers/FollowerScreen.dart';
import 'package:spoot_light/Screens/Followers/FollowingScreen.dart';
import 'package:spoot_light/Screens/Followers/SubscribersScreen.dart';
import 'package:spoot_light/Screens/HomeScreens/ExploreMemoriesScreen.dart';
import 'package:spoot_light/Screens/HomeScreens/NotificationScreen.dart';
import 'package:spoot_light/Screens/MainHomeScreen/MainHomeScreen.dart';
import 'package:spoot_light/Screens/HomeScreens/HomeScreen.dart';
import 'package:spoot_light/Screens/HomeScreens/ToDoListScreen/AddNewtodoList.dart';
import 'package:spoot_light/Screens/HomeScreens/ToDoListScreen/todolistScreen.dart';
import 'package:spoot_light/Screens/OnBoardingScreens/on_boarding_screen.dart';
import 'package:spoot_light/Screens/PostScreen/CreateAnAudio2.dart';
import 'package:spoot_light/Screens/PostScreen/MakeNewFriendScreen.dart';
import 'package:spoot_light/Screens/ProfileScreens/EditProfile.dart';
import 'package:spoot_light/Screens/ProfileScreens/PickTopicScreen.dart';
import 'package:spoot_light/Screens/ProfileScreens/ProfilePopUpScreen.dart';
import 'package:spoot_light/Screens/ProfileScreens/ProfileScreen.dart';
import 'package:spoot_light/Screens/ProfileScreens/SelectPlanScreen.dart';
import 'package:spoot_light/SplashScreen.dart';
import 'package:spoot_light/firebase_options.dart';
import 'package:spoot_light/testeditprofile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(MainController()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // final Future<FirebaseApp> _initilization =
  //     Firebase.initializeApp(); //firebase

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
            home: OnBoardingScreen(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
