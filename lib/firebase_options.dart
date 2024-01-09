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
    apiKey: 'AIzaSyDhQJw7drG9NyUdO8RvACyRgvpgUnpJrPs',
    appId: '1:457783796735:web:d6748c19c08cf3e19b3dca',
    messagingSenderId: '457783796735',
    projectId: 'chat-app-flutter-55981',
    authDomain: 'chat-app-flutter-55981.firebaseapp.com',
    storageBucket: 'chat-app-flutter-55981.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1EA6M9JdayIjOAiqsp9wmpSB-dusfoKU',
    appId: '1:457783796735:android:abd8acce094862a19b3dca',
    messagingSenderId: '457783796735',
    projectId: 'chat-app-flutter-55981',
    storageBucket: 'chat-app-flutter-55981.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsCmTvsMFyLYMvxxb4MwwwN6GOeQv9GEc',
    appId: '1:457783796735:ios:f7bf79d3a51b91dc9b3dca',
    messagingSenderId: '457783796735',
    projectId: 'chat-app-flutter-55981',
    storageBucket: 'chat-app-flutter-55981.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBsCmTvsMFyLYMvxxb4MwwwN6GOeQv9GEc',
    appId: '1:457783796735:ios:b02cce3c99d529529b3dca',
    messagingSenderId: '457783796735',
    projectId: 'chat-app-flutter-55981',
    storageBucket: 'chat-app-flutter-55981.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}