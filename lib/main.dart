import 'package:fixandfit/notifications.dart';
import 'package:fixandfit/pageView.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase based on the platform
  // if (kIsWeb) {
  //   await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //       apiKey: "AIzaSyDhMqN7gl09W_s2OdmmuxvY9ylyvkibx30",
  //       authDomain: "fixandfit-ae277.firebaseapp.com",
  //       projectId: "fixandfit-ae277",
  //       storageBucket: "fixandfit-ae277.appspot.com",
  //       messagingSenderId: "879256738855",
  //       appId: "1:879256738855:web:77086234d25cc796bac202",
  //       measurementId: "G-6XDJCXV7F9",
  //     ),
  //   );
  // } else {
  //   await Firebase.initializeApp();
  // }

  // await FirebaseApi().initNotifications();

  // // Set system UI overlay style (only for mobile platforms)
  // if (!kIsWeb) {
  //   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     systemNavigationBarDividerColor: Color.fromRGBO(241, 241, 241, 1.000),
  //     statusBarColor: Color.fromRGBO(241, 241, 241, 1.000),
  //   ));
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Fix & Fit",
        debugShowCheckedModeBanner: false,
        routes: {
          '/NotificationPage': (context) => const NotificationPage(),
        },
        theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home: MultiStepForm());
  }
}
