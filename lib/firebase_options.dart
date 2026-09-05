// ─────────────────────────────────────────────────────────────────────────────
// هذا الملف يُولَّد تلقائياً بواسطة FlutterFire CLI.
// بعد تشغيل: flutterfire configure
// سيُستبدل هذا الملف بالقيم الصحيحة من مشروع Firebase الخاص بك.
//
// الخطوات:
//   1. اذهب إلى https://console.firebase.google.com
//   2. أنشئ مشروعاً جديداً باسم naboo-licenses
//   3. فعّل Firestore و Authentication (Anonymous)
//   4. شغّل في Terminal: flutterfire configure
//   5. اختر مشروعك → سيُنشئ هذا الملف تلقائياً بالقيم الصحيحة
// ─────────────────────────────────────────────────────────────────────────────

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return web;
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:  return android;
      case TargetPlatform.iOS:      return ios;
      case TargetPlatform.macOS:    return macos;
      case TargetPlatform.windows:  return windows;
      case TargetPlatform.linux:    throw UnsupportedError('Linux not supported');
      default:                      throw UnsupportedError('Unknown platform');
    }
  }

  // ── استبدل القيم أدناه بقيم مشروعك من Firebase Console ──────────────────
  // ستجدها في: Project Settings → Your apps → Config

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBvH_yxEAv1jq_h-EgbsJibId5TlniUVW8',
    appId: '1:671139204618:web:09ba6ef7f297607e43d9f3',
    messagingSenderId: '671139204618',
    projectId: 'maarey-dj',
    authDomain: 'maarey-dj.firebaseapp.com',
    storageBucket: 'maarey-dj.firebasestorage.app',
    measurementId: 'G-MWLPBGMYEQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBhKdi6cT5bDjRWOLRuyI-6dou1rtys4Mo',
    appId: '1:671139204618:android:3282200f4a5dcb1943d9f3',
    messagingSenderId: '671139204618',
    projectId: 'maarey-dj',
    storageBucket: 'maarey-dj.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAaevH906C3zWvH47A2a-U56r1YGlI4Z1M',
    appId: '1:671139204618:ios:862cb029cfe7bb6e43d9f3',
    messagingSenderId: '671139204618',
    projectId: 'maarey-dj',
    storageBucket: 'maarey-dj.firebasestorage.app',
    iosBundleId: 'com.mareey.ios',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAaevH906C3zWvH47A2a-U56r1YGlI4Z1M',
    appId: '1:671139204618:ios:1ee9ca3f161ef1c043d9f3',
    messagingSenderId: '671139204618',
    projectId: 'maarey-dj',
    storageBucket: 'maarey-dj.firebasestorage.app',
    iosBundleId: 'com.maarey.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBvH_yxEAv1jq_h-EgbsJibId5TlniUVW8',
    appId: '1:671139204618:web:09ba6ef7f297607e43d9f3',
    messagingSenderId: '671139204618',
    projectId: 'maarey-dj',
    authDomain: 'maarey-dj.firebaseapp.com',
    storageBucket: 'maarey-dj.firebasestorage.app',
    measurementId: 'G-MWLPBGMYEQ',
  );

}