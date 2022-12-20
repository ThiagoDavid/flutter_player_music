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
    apiKey: 'AIzaSyAOSe9ikQTGNL-Xc_j2aKpJhSKwjFkciHE',
    appId: '1:399740189546:web:adda218f4d47966788c313',
    messagingSenderId: '399740189546',
    projectId: 'musicplayer1-1a13b',
    authDomain: 'musicplayer1-1a13b.firebaseapp.com',
    storageBucket: 'musicplayer1-1a13b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBT8GCKl3RX_Eo0pkDqyk1XZuyZAm87Cu0',
    appId: '1:399740189546:android:e84f3d55ee29cfd988c313',
    messagingSenderId: '399740189546',
    projectId: 'musicplayer1-1a13b',
    storageBucket: 'musicplayer1-1a13b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0PSar3fpKP2lwY2YK3m5NLxNIW9tdnbk',
    appId: '1:399740189546:ios:615d163df153303b88c313',
    messagingSenderId: '399740189546',
    projectId: 'musicplayer1-1a13b',
    storageBucket: 'musicplayer1-1a13b.appspot.com',
    iosClientId: '399740189546-2rjf1pdt21uhkevlvppflnq0vff2sbsp.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterPlayerMusic',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0PSar3fpKP2lwY2YK3m5NLxNIW9tdnbk',
    appId: '1:399740189546:ios:615d163df153303b88c313',
    messagingSenderId: '399740189546',
    projectId: 'musicplayer1-1a13b',
    storageBucket: 'musicplayer1-1a13b.appspot.com',
    iosClientId: '399740189546-2rjf1pdt21uhkevlvppflnq0vff2sbsp.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterPlayerMusic',
  );
}