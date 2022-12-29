// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBXuoucg25lQJbDlaLRkYD8W4502PuRD4I',
    appId: '1:322721833929:web:1e6b986d36dd5206e9fe18',
    messagingSenderId: '322721833929',
    projectId: 'spot-light-85b24',
    authDomain: 'spot-light-85b24.firebaseapp.com',
    storageBucket: 'spot-light-85b24.appspot.com',
    measurementId: 'G-Q286HLLB6F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQA7CqbX1f9IzPioWcVSH6kGRmypoK1Xc',
    appId: '1:322721833929:android:7a25f94f711e2abbe9fe18',
    messagingSenderId: '322721833929',
    projectId: 'spot-light-85b24',
    storageBucket: 'spot-light-85b24.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_tFdfr_ixX0FUX_akZWPSnPLPAiuYp3I',
    appId: '1:322721833929:ios:5d087017d46e37e8e9fe18',
    messagingSenderId: '322721833929',
    projectId: 'spot-light-85b24',
    storageBucket: 'spot-light-85b24.appspot.com',
    iosClientId: '322721833929-j5rv75dr1565d4qp21vc4kkcv3fb4q1r.apps.googleusercontent.com',
    iosBundleId: 'com.example.spootLight',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_tFdfr_ixX0FUX_akZWPSnPLPAiuYp3I',
    appId: '1:322721833929:ios:5d087017d46e37e8e9fe18',
    messagingSenderId: '322721833929',
    projectId: 'spot-light-85b24',
    storageBucket: 'spot-light-85b24.appspot.com',
    iosClientId: '322721833929-j5rv75dr1565d4qp21vc4kkcv3fb4q1r.apps.googleusercontent.com',
    iosBundleId: 'com.example.spootLight',
  );
}
