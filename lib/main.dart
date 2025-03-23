import 'package:bookly_app/constant%20.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_View.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const Bookly_app());
}

class Bookly_app extends StatelessWidget {
  const Bookly_app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: KprimaryColor),
      home: const SplashView(),
    );
  }
}
