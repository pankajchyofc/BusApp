import 'package:flutter/material.dart';


class BusTicketHomePage extends StatefulWidget {
  const BusTicketHomePage({super.key});

  @override
  State<BusTicketHomePage> createState() => _BusTicketHomePageState();
}

class _BusTicketHomePageState extends State<BusTicketHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        Text("Hey Anushka", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),)
      ],)),
    );
  }
}