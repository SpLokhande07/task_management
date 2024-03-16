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
    apiKey: 'AIzaSyBwOj1faq4ZkfYlk-5wTPG34mi_mVg3gr4',
    appId: '1:447373574554:web:f3f5879a51a5b0492ffa23',
    messagingSenderId: '447373574554',
    projectId: 'yaadein-c1dbe',
    authDomain: 'yaadein-c1dbe.firebaseapp.com',
    storageBucket: 'yaadein-c1dbe.appspot.com',
    measurementId: 'G-B74CJ4GQ1T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCiqO2bJKyulvbPjltGA8IjF7TnWLujeI0',
    appId: '1:447373574554:android:2ca22f41d44f04ee2ffa23',
    messagingSenderId: '447373574554',
    projectId: 'yaadein-c1dbe',
    storageBucket: 'yaadein-c1dbe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSUY2XG3VnFR14uOt2C6515GocRPeWzb4',
    appId: '1:447373574554:ios:c289aab8bdf686e32ffa23',
    messagingSenderId: '447373574554',
    projectId: 'yaadein-c1dbe',
    storageBucket: 'yaadein-c1dbe.appspot.com',
    iosClientId: '447373574554-59q7lvn488dbdup5spo79p9lg3n6qhi1.apps.googleusercontent.com',
    iosBundleId: 'com.sp.ios.todoWithAlarm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDSUY2XG3VnFR14uOt2C6515GocRPeWzb4',
    appId: '1:447373574554:ios:2c1da34f2096a6582ffa23',
    messagingSenderId: '447373574554',
    projectId: 'yaadein-c1dbe',
    storageBucket: 'yaadein-c1dbe.appspot.com',
    iosClientId: '447373574554-asqc09suo144fg07bp3qmv352dgbmo9q.apps.googleusercontent.com',
    iosBundleId: 'com.sp.macos.todoWithAlarm',
  );
}
