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
    apiKey: 'AIzaSyCOi-5qkdlBJaG570NBz-DkHToSm5IBiSo',
    appId: '1:254103199108:web:0b16c48f7c0e00e19091d1',
    messagingSenderId: '254103199108',
    projectId: 'evapp-a4979',
    authDomain: 'evapp-a4979.firebaseapp.com',
    databaseURL: 'https://evapp-a4979-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'evapp-a4979.appspot.com',
    measurementId: 'G-XJBMFBK8WG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCLGTSrEMfnyvFlfGIFzXkowla4hCoA71k',
    appId: '1:254103199108:android:66469843ae0a9d009091d1',
    messagingSenderId: '254103199108',
    projectId: 'evapp-a4979',
    databaseURL: 'https://evapp-a4979-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'evapp-a4979.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmGh-UW7rAAA704hDCQbxxsF_a_U6pR0g',
    appId: '1:254103199108:ios:744516c0a4a237d29091d1',
    messagingSenderId: '254103199108',
    projectId: 'evapp-a4979',
    databaseURL: 'https://evapp-a4979-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'evapp-a4979.appspot.com',
    androidClientId: '254103199108-r2o8brob1jq6jn9igoaukjbrr31bmrr0.apps.googleusercontent.com',
    iosClientId: '254103199108-idr2qfjt5i1reo1c2dq286a8n3kbrc9s.apps.googleusercontent.com',
    iosBundleId: 'com.example.dashboard',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCmGh-UW7rAAA704hDCQbxxsF_a_U6pR0g',
    appId: '1:254103199108:ios:680bfdd2e3d044159091d1',
    messagingSenderId: '254103199108',
    projectId: 'evapp-a4979',
    databaseURL: 'https://evapp-a4979-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'evapp-a4979.appspot.com',
    androidClientId: '254103199108-r2o8brob1jq6jn9igoaukjbrr31bmrr0.apps.googleusercontent.com',
    iosClientId: '254103199108-cjtoghmuutn51dnj1lu4svbegu3knpjn.apps.googleusercontent.com',
    iosBundleId: 'com.example.dashboard.RunnerTests',
  );
}