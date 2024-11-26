import 'package:flutter/material.dart';
import 'package:food_app/core/res/styles/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppStyles.tabColor
      ),
      child: const Row(
        children: [
          AppTab(tabText: "AirLine Tickets", tabBorder: false,),
          AppTab(tabText: "Hotels", tabBorder: true,tabColored: false,)
        ]
      ),
    );
  }
}

class AppTab extends StatelessWidget {

  final String tabText;
  final bool tabBorder;
  final bool tabColored;
  const AppTab({super.key, this.tabText='', this.tabBorder=false, this.tabColored=true});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      width: size.width*0.44,
      decoration: BoxDecoration(
          color: tabColored==true?Colors.white:Colors.transparent,
          borderRadius: tabBorder==false?const BorderRadius.horizontal(left: Radius.circular(50)):const BorderRadius.horizontal(right: Radius.circular(50))
      ),
      child: Center(child: Text(tabText)),

    );
  }
}

