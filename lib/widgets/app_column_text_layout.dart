import 'package:flutter/material.dart';
import 'package:food_app/widgets/text_style_custom.dart';
import 'package:food_app/widgets/text_style_custom_one.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;

  const AppColumnTextLayout({super.key, required this.topText, required this.bottomText, this.alignment=CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleCustomOne(placeholderText: topText),
        const SizedBox(height: 5,),
        TextStyleCustom(placeholderText: bottomText),
      ],
    );
  }
}
