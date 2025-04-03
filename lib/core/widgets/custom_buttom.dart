import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.onPressed,
  });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: Styles.TextStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
