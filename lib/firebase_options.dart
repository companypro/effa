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
    apiKey: 'AIzaSyAV4pOAettiIDr9wnjP_LawkaDJ9_vWHbk',
    appId: '1:378429873654:web:1f1908ab194db5e9e67bd7',
    messagingSenderId: '378429873654',
    projectId: 'effa-6c6d7',
    authDomain: 'effa-6c6d7.firebaseapp.com',
    storageBucket: 'effa-6c6d7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBVWckozKH6gJs35SWCQ2tun1TdWvFQvF4',
    appId: '1:378429873654:android:c720900d98e8d3d3e67bd7',
    messagingSenderId: '378429873654',
    projectId: 'effa-6c6d7',
    storageBucket: 'effa-6c6d7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_0xhsZduvMlhg1YTk_Ya6hO8hoVAHvxo',
    appId: '1:378429873654:ios:147e21b95aab1b88e67bd7',
    messagingSenderId: '378429873654',
    projectId: 'effa-6c6d7',
    storageBucket: 'effa-6c6d7.appspot.com',
    iosBundleId: 'com.example.effa',
  );

}