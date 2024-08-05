// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB08a1ZauPXS5MCRsAx02gzL48UHDiGT2U',
    appId: '1:1084280375018:web:4236857699b79a86b33993',
    messagingSenderId: '1084280375018',
    projectId: 'effa-f1e7a',
    authDomain: 'effa-f1e7a.firebaseapp.com',
    storageBucket: 'effa-f1e7a.appspot.com',
    measurementId: 'G-D43GGCQR4F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDx6QHzRdM5eu8POx1hH7q4AJPRw4PeTkA',
    appId: '1:1084280375018:android:dd72d2513cc8a516b33993',
    messagingSenderId: '1084280375018',
    projectId: 'effa-f1e7a',
    storageBucket: 'effa-f1e7a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDET1MR6t8rSU9ugbOyYFQylG56b7r-sg0',
    appId: '1:1084280375018:ios:93425a6f34632472b33993',
    messagingSenderId: '1084280375018',
    projectId: 'effa-f1e7a',
    storageBucket: 'effa-f1e7a.appspot.com',
    iosBundleId: 'com.example.effa',
  );
}
