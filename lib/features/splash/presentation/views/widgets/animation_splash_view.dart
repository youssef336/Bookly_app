import 'package:flutter/material.dart';

class animation_splash_view extends StatelessWidget {
  const animation_splash_view({super.key, required this.animation});

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return SlideTransition(
          position: animation,
          child: const Text("Read free Books", textAlign: TextAlign.center),
        );
      },
    );
  }
}
