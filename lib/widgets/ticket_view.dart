import 'package:flutter/material.dart';
import 'package:food_app/widgets/app_column_text_layout.dart';
import 'package:food_app/widgets/app_layout_builder.dart';
import 'package:food_app/widgets/big_circle.dart';
import 'package:food_app/widgets/big_dot.dart';
import 'package:food_app/widgets/text_style_custom.dart';
import 'package:food_app/widgets/text_style_custom_one.dart';

import '../core/res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket, this.wholeScreen=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen==true?0:16),
        child: Column(
          children: [
            //blue section of the ticket card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  //Show departure and destination with icons first line.
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyleCustom(
                        placeholderText: ticket['from']['code'],
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilder(
                              randomDivider: 6,
                              widthSize: 3,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.57,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleCustomOne(
                        placeholderText: ticket['to']['code'],
                      ),
                    ],
                  ),
                  //Show departure and destination names with time
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyleCustom(
                            placeholderText: ticket['from']['name'],
                          )),
                      Expanded(child: Container()),
                      TextStyleCustom(
                        placeholderText: ticket['flying_time'],
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                          width: 100,
                          child: TextStyleCustom(
                            placeholderText: ticket['to']['name'],
                            aligning: TextAlign.end,
                          )),
                    ],
                  )
                ],
              ),
            ),
            //Circles and dots spacing
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: true,
                  ),
                  Expanded(
                      child: AppLayoutBuilder(
                    randomDivider: 20,
                    widthSize: 6,
                  )),
                  BigCircle(
                    isRight: false,
                  )
                ],
              ),
            ),
            // Orange section of the ticket card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  //Show departure and destination with icons first line.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                          alignment: CrossAxisAlignment.start,
                          topText: ticket['date'],
                          bottomText: "Date"),
                      AppColumnTextLayout(
                          alignment: CrossAxisAlignment.center,
                          topText: ticket['departure_time'],
                          bottomText: "Departure time"),
                      AppColumnTextLayout(
                          alignment: CrossAxisAlignment.end,
                          topText: ticket['number'].toString(),
                          bottomText: "Number"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
