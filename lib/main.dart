import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'featurse/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.montserratTextTheme(
            ThemeData(brightness: Brightness.dark)
                .textTheme), // Set the brightness to dark
      ).copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplashView(),
    );
  }
}
