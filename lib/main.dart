// ignore_for_file: camel_case_types

import 'package:bookly_app/constant%20.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_View.dart';
import 'package:flutter/material.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly_app());
}

class Bookly_app extends StatelessWidget {
  const Bookly_app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KprimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),

      home: const SplashView(),
    );
  }
}
