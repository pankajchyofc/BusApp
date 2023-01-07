import 'package:flutter/material.dart';


class MyTripPage extends StatefulWidget {
  const MyTripPage({super.key});

  @override
  State<MyTripPage> createState() => _MyTripPageState();
}

class _MyTripPageState extends State<MyTripPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      child: Text("MyTrip Page"),
    ));
  }
}