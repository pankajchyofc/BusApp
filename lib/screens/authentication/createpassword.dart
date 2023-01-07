import 'package:busapp/common_widget/custome_button.dart';
import 'package:busapp/common_widget/custome_textfield.dart';
import 'package:flutter/material.dart';



class CreatePassowrd extends StatefulWidget {
  const CreatePassowrd({super.key});

  @override
  State<CreatePassowrd> createState() => _CreatePassowrdState();
}

class _CreatePassowrdState extends State<CreatePassowrd> {
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
                "Create Password",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Create your new password",
                style: TextStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Image(image: AssetImage("assets/images/createpass.PNG")),
              const SizedBox(
                height: 20,
              ),
              Custome_Textfield(hinttext: "Enter new password", width1: 350, icon: Icon(Icons.lock) ),
              const SizedBox(
                height: 20,
              ),
              Custome_Textfield(hinttext: "Confirm new password", width1: 350 ,icon: Icon(Icons.lock)),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomeButton(label: "Save",onpressed: (){
                  Navigator.pushNamed(context, "/login");
                },),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
