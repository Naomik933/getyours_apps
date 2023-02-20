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
    apiKey: 'AIzaSyCrjjXLC3yH1inBtHYeiJUozLCxLiDUaUg',
    appId: '1:968885936309:web:4d95c83c66001771c6defc',
    messagingSenderId: '968885936309',
    projectId: 'getyours-apps',
    authDomain: 'getyours-apps.firebaseapp.com',
    storageBucket: 'getyours-apps.appspot.com',
    measurementId: 'G-V5D4DXKW54',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBAB072RjDGBG3X6isy_crvEf7vsZAJiuw',
    appId: '1:968885936309:android:f5fe4929d61c204dc6defc',
    messagingSenderId: '968885936309',
    projectId: 'getyours-apps',
    storageBucket: 'getyours-apps.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_1R3ugLKTXOdcZLHmdUCYt0KZx4JEjUM',
    appId: '1:968885936309:ios:b7894cb256e41c28c6defc',
    messagingSenderId: '968885936309',
    projectId: 'getyours-apps',
    storageBucket: 'getyours-apps.appspot.com',
    androidClientId: '968885936309-ncq5q76sudd45ir17s3rfcqh3rcfgq10.apps.googleusercontent.com',
    iosClientId: '968885936309-rhonoecohmi0a5pmobqaoqkm63n3fsps.apps.googleusercontent.com',
    iosBundleId: 'com.example.getyoursApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_1R3ugLKTXOdcZLHmdUCYt0KZx4JEjUM',
    appId: '1:968885936309:ios:b7894cb256e41c28c6defc',
    messagingSenderId: '968885936309',
    projectId: 'getyours-apps',
    storageBucket: 'getyours-apps.appspot.com',
    androidClientId: '968885936309-ncq5q76sudd45ir17s3rfcqh3rcfgq10.apps.googleusercontent.com',
    iosClientId: '968885936309-rhonoecohmi0a5pmobqaoqkm63n3fsps.apps.googleusercontent.com',
    iosBundleId: 'com.example.getyoursApp',
  );
}
