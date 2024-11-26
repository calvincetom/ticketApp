import 'package:flutter/material.dart';
import 'package:food_app/core/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: size.width * 0.6,
      height: 350,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            height: 180,
            decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/${hotel['image']}"
                    )
                )
            )
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            hotel['place'],
            style: AppStyles.headLineStyle2.copyWith(color: Colors.white70),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            hotel['destination'],
            style: AppStyles.headLineStyle2.copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            "\$${hotel['price'].toString()}/night",
            style: AppStyles.headLineStyle2.copyWith(color: Colors.white70),
          ),
        )
      ]),
    );
  }
}