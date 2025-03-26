// ignore_for_file: file_names, non_constant_identifier_names

import 'package:bookly_app/constant%20.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/view/home.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/animation_splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    intanimation_splash_view();
    navigatetohome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4),
        animation_splash_view(animation: animation),
      ],
    );
  }

  void intanimation_splash_view() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: const Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }

  void navigatetohome() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.zoom,
      //   duration: KTransationDuration,
      // );
      GoRouter.of(context).go(AppRouter.kHomeView);
    });
  }
}
