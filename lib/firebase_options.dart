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
    apiKey: 'AIzaSyAUJZtilzWKZwXzVrm6PTrrmbuoZd90Kak',
    appId: '1:982983005626:web:ce0f696baefc34dfeeb983',
    messagingSenderId: '982983005626',
    projectId: 'spot-light-bff5e',
    authDomain: 'spot-light-bff5e.firebaseapp.com',
    storageBucket: 'spot-light-bff5e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAawnytvVuuKDGleB3kebJOvhIYM74F2J4',
    appId: '1:982983005626:android:d144dc9aa9d7cd10eeb983',
    messagingSenderId: '982983005626',
    projectId: 'spot-light-bff5e',
    storageBucket: 'spot-light-bff5e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDty9bGXfaP9aZo1PCIetP5OX6VZPryFNU',
    appId: '1:982983005626:ios:3397c6cd82bc64f3eeb983',
    messagingSenderId: '982983005626',
    projectId: 'spot-light-bff5e',
    storageBucket: 'spot-light-bff5e.appspot.com',
    iosClientId: '982983005626-55i8i75um7h9l8d071seb4olhioap1gq.apps.googleusercontent.com',
    iosBundleId: 'com.example.spootLight',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDty9bGXfaP9aZo1PCIetP5OX6VZPryFNU',
    appId: '1:982983005626:ios:3397c6cd82bc64f3eeb983',
    messagingSenderId: '982983005626',
    projectId: 'spot-light-bff5e',
    storageBucket: 'spot-light-bff5e.appspot.com',
    iosClientId: '982983005626-55i8i75um7h9l8d071seb4olhioap1gq.apps.googleusercontent.com',
    iosBundleId: 'com.example.spootLight',
  );
}
