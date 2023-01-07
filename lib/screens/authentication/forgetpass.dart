import 'package:busapp/common_widget/custome_button.dart';
import 'package:busapp/common_widget/custome_textfield.dart';
import 'package:flutter/material.dart';




class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                "Forgot Password",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Change your password if you have forgot",
                style: TextStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Image(image: AssetImage("assets/images/forgetpass.PNG")),
              const SizedBox(
                height: 20,
              ),
              Custome_Textfield(hinttext: "Phone Number", width1: 350, icon: Icon(Icons.phone),  ),
              const SizedBox(
                height: 20,
              ),
              
              Align(
                alignment: Alignment.center,
                child: CustomeButton(label: "Send OTP",onpressed: (){
                  Navigator.pushNamed(context, "/otp2");
                },),
              ),
            ],
          ),
        ),
      )),
    );
  }
}