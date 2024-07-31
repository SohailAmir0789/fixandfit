import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:fixandfit/api/firebaseapi.dart';
import 'package:fixandfit/login_screen.dart';
import 'package:fixandfit/notifications.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'api/firebaseapi.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyDhMqN7gl09W_s2OdmmuxvY9ylyvkibx30",
              projectId: "fixandfit-ae277",
              storageBucket: "fixandfit-ae277.appspot.com",
              messagingSenderId: "879256738855",
              appId: "1:879256738855:web:77086234d25cc796bac202",
              measurementId: "G-6XDJCXV7F9"))
      : await Firebase.initializeApp();
  await FirebaseApi().initNotifications();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarDividerColor: Color.fromRGBO(241, 241, 241, 1.000),
    statusBarColor: Color.fromRGBO(241, 241, 241, 1.000),
  ));
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Fix & Fit",
        debugShowCheckedModeBanner: false,
        routes: {
          '/NotificationPage': (context) => const NotificationPage(),
        },
        theme: ThemeData(
            primarySwatch: Colors.amber,
            textTheme: GoogleFonts.poppinsTextTheme()),
        home: LoginScreen());
  }
}
