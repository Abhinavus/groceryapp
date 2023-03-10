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
    apiKey: 'AIzaSyAABCbE55WPCCX4WRU_v9zzrWyGBnHl6K8',
    appId: '1:1071556119977:web:439da4cd9befcb668648b8',
    messagingSenderId: '1071556119977',
    projectId: 'inexsoft',
    authDomain: 'inexsoft.firebaseapp.com',
    storageBucket: 'inexsoft.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAVZIYPMLirhh4fU2C9BdhiMji-EgRD8OA',
    appId: '1:1071556119977:android:3a5d0dd174f28ef48648b8',
    messagingSenderId: '1071556119977',
    projectId: 'inexsoft',
    storageBucket: 'inexsoft.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1WOHORFJc7fN_WypVi0hjWzo2WClmG38',
    appId: '1:1071556119977:ios:fbd45f363b6072998648b8',
    messagingSenderId: '1071556119977',
    projectId: 'inexsoft',
    storageBucket: 'inexsoft.appspot.com',
    iosClientId: '1071556119977-gji6knupmqhg1ap1r6jp5m2flg106oqd.apps.googleusercontent.com',
    iosBundleId: 'com.example.inexsoftproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1WOHORFJc7fN_WypVi0hjWzo2WClmG38',
    appId: '1:1071556119977:ios:fbd45f363b6072998648b8',
    messagingSenderId: '1071556119977',
    projectId: 'inexsoft',
    storageBucket: 'inexsoft.appspot.com',
    iosClientId: '1071556119977-gji6knupmqhg1ap1r6jp5m2flg106oqd.apps.googleusercontent.com',
    iosBundleId: 'com.example.inexsoftproject',
  );
}
