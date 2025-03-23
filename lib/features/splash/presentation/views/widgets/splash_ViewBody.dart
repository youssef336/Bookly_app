import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewbody extends StatelessWidget {
  const SplashViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Image.asset(AssetsData.logo)]);
  }
}
