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
    apiKey: 'AIzaSyC32GclZhXUHj6hbbrfeipp6T0IlOg6j2k',
    appId: '1:272220941015:web:9437ec846e4269ddad5e92',
    messagingSenderId: '272220941015',
    projectId: 'chat-app-5502a',
    authDomain: 'chat-app-5502a.firebaseapp.com',
    storageBucket: 'chat-app-5502a.appspot.com',
    measurementId: 'G-N158T6CER5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCU2lypPETsx0dPhwbrmG2etfWEqVRFvKo',
    appId: '1:272220941015:android:80c8d2e2998a0f23ad5e92',
    messagingSenderId: '272220941015',
    projectId: 'chat-app-5502a',
    storageBucket: 'chat-app-5502a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmbbyBvywiyy0DS4XbgPiKPgf5wl8J-c0',
    appId: '1:272220941015:ios:e40be178b683274cad5e92',
    messagingSenderId: '272220941015',
    projectId: 'chat-app-5502a',
    storageBucket: 'chat-app-5502a.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCmbbyBvywiyy0DS4XbgPiKPgf5wl8J-c0',
    appId: '1:272220941015:ios:c18cb14654800729ad5e92',
    messagingSenderId: '272220941015',
    projectId: 'chat-app-5502a',
    storageBucket: 'chat-app-5502a.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
