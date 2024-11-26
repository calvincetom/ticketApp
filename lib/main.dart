import 'package:flutter/material.dart';
import 'package:food_app/core/bottom_nav_bar.dart';
import 'package:food_app/screens/home/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticketing App',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
            routes: {
        "/": (context){
          return const BottomNavBar();
        },
        "all_tickets": (context){
          //data preprocessing
          return const AllTickets();
        }
      },
    );
  }
}


