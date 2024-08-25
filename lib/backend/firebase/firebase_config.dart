import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBcKayECHfL-_Y7BMUZSrl7-SDUsCMVnkw",
            authDomain: "day4-kanbara.firebaseapp.com",
            projectId: "day4-kanbara",
            storageBucket: "day4-kanbara.appspot.com",
            messagingSenderId: "842847331814",
            appId: "1:842847331814:web:85dc7af5033b818aa4e227",
            measurementId: "G-Z993SMN7VE"));
  } else {
    await Firebase.initializeApp();
  }
}
