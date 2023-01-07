import 'package:busapp/constants/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        
        children: [
         Container(
          margin: EdgeInsets.only(top: 100),
                width: 332,
                height:280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  
                    borderRadius: 
                    BorderRadius.circular(25),
                    
                  
                ),
              ),
          SizedBox(height: 120,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("OFFERS"),
                      Text("View All")
                    ],
                  ),
          ),
          Expanded(
            child: ListView(
             // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  color: Colors.black ,
                  width: 150,
                  height: 20,
                  //child: Image(image: AssetImage("assets/images/forgetpass.PNG")),
                ),
                const SizedBox(width: 10,),
                
                Container(
                  color: Colors.red ,
                  width: 150,
                  height: 20,
                ),
                const SizedBox(width: 10,),
                Container(
                  color: Colors.yellow ,
                  width: 150,
                  height: 20,
                )
          
              ],
            ),
          ),
          
        ],
        
        
      ),
    );
  }
}
