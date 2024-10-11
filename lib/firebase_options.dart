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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBHi4q3lKWTtUjSxtU6kjnW-0EC0qhD5fk',
    appId: '1:478381358391:web:3be068ab373260e21caeb2',
    messagingSenderId: '478381358391',
    projectId: 'restaurante-54315',
    authDomain: 'restaurante-54315.firebaseapp.com',
    storageBucket: 'restaurante-54315.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3UbpQ7jGd9_Cjg1d4jk9rON1IxuCibM4',
    appId: '1:478381358391:android:8ba53827cb8c9e7e1caeb2',
    messagingSenderId: '478381358391',
    projectId: 'restaurante-54315',
    storageBucket: 'restaurante-54315.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDoVxjJCM9DWre32tA4sMzPTFNY5eFHsow',
    appId: '1:478381358391:ios:1323c0027ea31fe01caeb2',
    messagingSenderId: '478381358391',
    projectId: 'restaurante-54315',
    storageBucket: 'restaurante-54315.appspot.com',
    iosBundleId: 'com.example.learningb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDoVxjJCM9DWre32tA4sMzPTFNY5eFHsow',
    appId: '1:478381358391:ios:1323c0027ea31fe01caeb2',
    messagingSenderId: '478381358391',
    projectId: 'restaurante-54315',
    storageBucket: 'restaurante-54315.appspot.com',
    iosBundleId: 'com.example.learningb',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBHi4q3lKWTtUjSxtU6kjnW-0EC0qhD5fk',
    appId: '1:478381358391:web:35f9cbbb4a81edaa1caeb2',
    messagingSenderId: '478381358391',
    projectId: 'restaurante-54315',
    authDomain: 'restaurante-54315.firebaseapp.com',
    storageBucket: 'restaurante-54315.appspot.com',
  );
}