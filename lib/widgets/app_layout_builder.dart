import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomDivider;
  final double widthSize;
  const AppLayoutBuilder({super.key, required this.randomDivider, this.widthSize=3 });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => SizedBox(
              width: widthSize,
              height: 1,
              child: const DecoratedBox(decoration: BoxDecoration(
                color: Colors.white,
              )),
            )),
      );
    });
  }
}
