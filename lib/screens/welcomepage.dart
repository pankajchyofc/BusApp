import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/landingpage');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage("assets/images/logo.PNG")),
              SizedBox(height: 20,),
              Text("HamroYatra",style: TextStyle(
                color: Color(0xff02AD24),
                fontWeight: FontWeight.bold,
                fontSize: 30,
                
              ),)
            ],
          ),
        ),
      )),
    );
  }
}