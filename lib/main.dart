import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:fixandfit/splashScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   if (kIsWeb) {
//     await Firebase.initializeApp(

//         options: const FirebaseOptions(
//             apiKey: "AIzaSyCePGGPdbk2XJcEnkZSOio21hL_HkZycUg",
//             authDomain: "fixandfit-ae277.firebaseapp.com",
//             projectId: "fixandfit-ae277",
//             storageBucket: "fixandfit-ae277.appspot.com",
//             messagingSenderId: "879256738855",
//             appId: "1:879256738855:web:77086234d25cc796bac202",
//             measurementId: "G-6XDJCXV7F9"));
//   } else {
//     await Firebase.initializeApp();
//   }
//   SystemChrome.setSystemUIOverlayStyle(
//       const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
//   runApp(const MyApp());
// }
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

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarDividerColor: Color.fromRGBO(241, 241, 241, 1.000),
    statusBarColor: Color.fromRGBO(241, 241, 241, 1.000),
  ));
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
      theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: const SplashScreen(),
    );
  }
}
