import 'package:flutter/material.dart';
import 'package:food_app/core/res/styles/app_styles.dart';
import 'package:food_app/screens/search/widgets/app_ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text(
            "What are\nyou Looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 30),
          ),
          const SizedBox(height: 20,),
          const AppTicketTabs(),
        ],
      ),
    );
  }
}
