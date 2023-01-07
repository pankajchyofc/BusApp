import 'package:flutter/material.dart';

import '../../common_widget/custome_button.dart';
import '../../common_widget/custome_textfield.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                "Change Password",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Update your new password",
                style: TextStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Image(image: AssetImage("assets/images/resetpass.PNG")),
              const SizedBox(
                height: 20,
              ),
              Custome_Textfield(hinttext: "Old password", width1: 350, icon: Icon(Icons.lock) ),
              const SizedBox(
                height: 20,
              ),
              Custome_Textfield(hinttext: "Enter new password", width1: 350 ,icon: Icon(Icons.lock)),
              const SizedBox(
                height: 30,
              ),
              Custome_Textfield(hinttext: "Confirm new password", width1: 350 ,icon: Icon(Icons.lock)),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomeButton(label: "Save",onpressed: (){},),
              ),
            ],
          ),
        ),
      )),
    );
  }
}