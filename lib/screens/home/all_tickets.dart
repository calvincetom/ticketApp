import 'package:flutter/material.dart';
import 'package:food_app/core/utils/app_json.dart';
import 'package:food_app/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("All Tickets")),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket, wholeScreen: true,)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
