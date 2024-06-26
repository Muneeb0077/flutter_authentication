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
    apiKey: 'AIzaSyBQwfFq-UXUy0tnEHsn7x4C5aodnOC3FHY',
    appId: '1:726310386644:web:e5ed7b22767722b0dd3441',
    messagingSenderId: '726310386644',
    projectId: 'myfirstproject-483fc',
    authDomain: 'myfirstproject-483fc.firebaseapp.com',
    storageBucket: 'myfirstproject-483fc.appspot.com',
    measurementId: 'G-DV96NTPCSS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVv5NlqJLJUzqG77cZ-MLR5kLKLhe0wD4',
    appId: '1:726310386644:android:50b9e7ddbc5b0f7edd3441',
    messagingSenderId: '726310386644',
    projectId: 'myfirstproject-483fc',
    storageBucket: 'myfirstproject-483fc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4_CWLY8srv5trW2-aVgnxJIje-pR-BH0',
    appId: '1:726310386644:ios:3164cec5c3f481aadd3441',
    messagingSenderId: '726310386644',
    projectId: 'myfirstproject-483fc',
    storageBucket: 'myfirstproject-483fc.appspot.com',
    androidClientId: '726310386644-ibaejjud2c2rb2d18g9et936kkt6bjf6.apps.googleusercontent.com',
    iosClientId: '726310386644-4kef2ql7hrpo0f5hqptr8v6sfo51e45t.apps.googleusercontent.com',
    iosBundleId: 'com.example.modernlogintute',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4_CWLY8srv5trW2-aVgnxJIje-pR-BH0',
    appId: '1:726310386644:ios:3164cec5c3f481aadd3441',
    messagingSenderId: '726310386644',
    projectId: 'myfirstproject-483fc',
    storageBucket: 'myfirstproject-483fc.appspot.com',
    androidClientId: '726310386644-ibaejjud2c2rb2d18g9et936kkt6bjf6.apps.googleusercontent.com',
    iosClientId: '726310386644-4kef2ql7hrpo0f5hqptr8v6sfo51e45t.apps.googleusercontent.com',
    iosBundleId: 'com.example.modernlogintute',
  );
}
