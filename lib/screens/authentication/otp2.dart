import 'package:busapp/common_widget/custome_textfield.dart';
import 'package:flutter/material.dart';

import '../../common_widget/custome_button.dart';


class OTPChangePass extends StatefulWidget {
  const OTPChangePass({super.key});

  @override
  State<OTPChangePass> createState() => _OTPChangePassState();
}

class _OTPChangePassState extends State<OTPChangePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                  margin: EdgeInsets.all(20.0),
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Verify OTP",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Please enter OTP code sent to your phone number",
                style: TextStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Image(image: AssetImage("assets/images/otp.PNG")),
              const SizedBox(
                height: 20,
              ),
              const Text("An OTP code was sent to +977- 9808420246"),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Change Phone Number?",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff02AD24),
                    ),
                  )),
                  SizedBox(height: 30,),
          
          Row(
              children: [
                Expanded(child: Custome_Textfield(hinttext: "", width1: 50,)),
                SizedBox(width: 10,),
                Expanded(child: Custome_Textfield(hinttext: "", width1: 50,)),
                SizedBox(width: 10,),
                Expanded(child: Custome_Textfield(hinttext: "", width1: 50,)),
                SizedBox(width: 10,),
                Expanded(child: Custome_Textfield(hinttext: "", width1: 50,)),
                SizedBox(width: 10,),
                Expanded(child: Custome_Textfield(hinttext: "", width1: 50,)),
                SizedBox(width: 10,),
                Expanded(child: Custome_Textfield(hinttext: "", width1: 50,)),
                
              ],
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.center,
              child: CustomeButton(label: "Verify",onpressed: (){
                Navigator.pushNamed(context, "/changepass");
              },),
            ),
          
            ],
                  ),
                ),
          )),
    );
  }
}