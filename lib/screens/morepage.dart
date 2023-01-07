import 'package:busapp/constants/color.dart';
import 'package:flutter/material.dart';


class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Our Services"),
              const SizedBox(height: 20,),
              Container(
                      width: 350,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
      
                            prefixIcon: const Icon(Icons.search),
                            hintText: "Search......",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            contentPadding: const EdgeInsets.all(5)),
                      )),
              SizedBox(height: 20,),
              Text("Tickets"),
              SizedBox(height: 20,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                
                          child: Icon(Icons.bus_alert, color: Colors.white, size: 40,),
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: appBarGradient.backgroundColor
                        ),),
                        Text("Bus")
                      ],
                    ),
                  ),
                  
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.bus_alert, color: Colors.white, size: 40,),
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: appBarGradient.backgroundColor
                        ),),
                        Text("Bus")
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.bus_alert, color: Colors.white, size: 40,),
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: appBarGradient.backgroundColor
                        ),),
                        Text("Bus")
                      ],
                    ),
                  ),
                  Expanded(
                    
                    child: Column(
                      children: [
                        Container(child: Icon(Icons.bus_alert, color: Colors.white, size: 40,),
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: appBarGradient.backgroundColor
                        ),),
                        Text("Bus")
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text("Vehicle Hire"),
              SizedBox(height: 20,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.bus_alert, color: Colors.white, size: 40,),
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: appBarGradient.backgroundColor
                        ),),
                        Text("Bus")
                      ],
                    ),
                  ),
                  
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.bus_alert, color: Colors.white, size: 40,),
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: appBarGradient.backgroundColor
                        ),),
                        Text("Bus")
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.bike_scooter, color: Colors.white, size: 40,),
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: appBarGradient.backgroundColor
                        ),),
                        Text("Bus")
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.car_rental, color: Colors.white, size: 40,),
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: appBarGradient.backgroundColor
                        ),),
                        Text("Bus")
                      ],
                    ),
                  ),
                ],
              ),
      
            SizedBox(height: 40,),
              Text("Vehicle Hire"),
              SizedBox(height: 20,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Icon(Icons.bus_alert, color: Colors.white, size: 40,),
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: appBarGradient.backgroundColor
                      ),),
                      Text("Bus")
                    ],
                  ),
                  
                  Column(
                    children: [
                      Container(
                        child: Icon(Icons.bus_alert, color: Colors.white, size: 40,),
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: appBarGradient.backgroundColor
                      ),),
                      Text("Bus")
                    ],
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}