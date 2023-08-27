import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/login_screen.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/opening_screen.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/quizscreen.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/score_screen.dart';

import 'Services/fcm.dart';

//@pragma('va:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  NotificationService().showNotification(message);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    Firebase.initializeApp().then(
      (value) {
        NotificationService().registerNotification();
        NotificationService().configLocalNotification();
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: OpeningScreen());
  }
}
