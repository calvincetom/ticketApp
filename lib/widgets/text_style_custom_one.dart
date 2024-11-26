import 'package:flutter/material.dart';
import 'package:food_app/core/res/styles/app_styles.dart';


class TextStyleCustomOne extends StatelessWidget {
  final String placeholderText;
  const TextStyleCustomOne({super.key, required this.placeholderText});

  @override
  Widget build(BuildContext context) {
    return Text(
      placeholderText,
      style:
      AppStyles.headLineStyle3.copyWith(color: Colors.white),
    );
  }
}
