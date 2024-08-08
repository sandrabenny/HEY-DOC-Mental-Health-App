import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBXgUkeU1Do3TDpXdLRw_7lNfPbg6NgzrU",
            authDomain: "heydoc-1234567.firebaseapp.com",
            projectId: "heydoc-1234567",
            storageBucket: "heydoc-1234567.appspot.com",
            messagingSenderId: "498303931492",
            appId: "1:498303931492:web:78fec55981ad91be8e3b71",
            measurementId: "G-PTK19WPG05"));
  } else {
    await Firebase.initializeApp();
  }
}
