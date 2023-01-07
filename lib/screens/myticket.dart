import 'package:flutter/material.dart';


class MyTicketPage extends StatefulWidget {
  const MyTicketPage({super.key});

  @override
  State<MyTicketPage> createState() => _MyTicketPageState();
}

class _MyTicketPageState extends State<MyTicketPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      child: Text("MyTicket Page"),
    ));
  }
}