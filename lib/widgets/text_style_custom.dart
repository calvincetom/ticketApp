import 'package:flutter/material.dart';
import 'package:food_app/core/res/styles/app_styles.dart';


class TextStyleCustom extends StatelessWidget {
  final String placeholderText;
  final TextAlign aligning;
  const TextStyleCustom({super.key, required this.placeholderText, this.aligning=TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      placeholderText,
      textAlign: aligning,
      style:
      AppStyles.headLineStyle4.copyWith(color: Colors.white),
    );
  }
}
