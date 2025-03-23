import 'package:bookly_app/constant%20.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/splash_ViewBody.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: KprimaryColor),
      home: const SplashViewbody(),
    );
  }
}
