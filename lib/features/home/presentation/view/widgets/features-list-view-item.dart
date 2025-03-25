// ignore_for_file: file_names

import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturesListViewItem extends StatelessWidget {
  const FeaturesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,

          image: const DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
