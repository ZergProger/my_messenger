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
    apiKey: 'AIzaSyD5onZuuU5rZ_dVuZDSwpnsfhq4f6gqKnc',
    appId: '1:120589219516:web:916a38d2eb03a2f77382b9',
    messagingSenderId: '120589219516',
    projectId: 'my-messenger-14e5d',
    authDomain: 'my-messenger-14e5d.firebaseapp.com',
    storageBucket: 'my-messenger-14e5d.firebasestorage.app',
    measurementId: 'G-6T3YR15K0Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBelsIsncrwvO9EMMXxhZKktAKfPDnOIJ8',
    appId: '1:120589219516:android:1b0af6ad274716687382b9',
    messagingSenderId: '120589219516',
    projectId: 'my-messenger-14e5d',
    storageBucket: 'my-messenger-14e5d.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKsZBqSfyBrZymgCtqAkHeFQg_u1ECixQ',
    appId: '1:120589219516:ios:b1f4307ef8ac15527382b9',
    messagingSenderId: '120589219516',
    projectId: 'my-messenger-14e5d',
    storageBucket: 'my-messenger-14e5d.firebasestorage.app',
    iosClientId: '120589219516-2lqqpac1vt4qleje5im5v98dm5u41ig4.apps.googleusercontent.com',
    iosBundleId: 'com.example.myMessenger',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCKsZBqSfyBrZymgCtqAkHeFQg_u1ECixQ',
    appId: '1:120589219516:ios:b1f4307ef8ac15527382b9',
    messagingSenderId: '120589219516',
    projectId: 'my-messenger-14e5d',
    storageBucket: 'my-messenger-14e5d.firebasestorage.app',
    iosClientId: '120589219516-2lqqpac1vt4qleje5im5v98dm5u41ig4.apps.googleusercontent.com',
    iosBundleId: 'com.example.myMessenger',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD5onZuuU5rZ_dVuZDSwpnsfhq4f6gqKnc',
    appId: '1:120589219516:web:40caf6874259a42f7382b9',
    messagingSenderId: '120589219516',
    projectId: 'my-messenger-14e5d',
    authDomain: 'my-messenger-14e5d.firebaseapp.com',
    storageBucket: 'my-messenger-14e5d.firebasestorage.app',
    measurementId: 'G-H0G4G5GX20',
  );
}
