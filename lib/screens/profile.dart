import 'package:flutter/material.dart';

import '../common_widget/custome_button.dart';
import '../common_widget/custome_textfield.dart';
import 'package:dotted_border/dotted_border.dart';

class ProfilePAge extends StatefulWidget {
  const ProfilePAge({super.key});

  @override
  State<ProfilePAge> createState() => _ProfilePAgeState();
}

class _ProfilePAgeState extends State<ProfilePAge> {
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
                "Create User's Profile",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Update profile details",
                style: TextStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 100,
                height: 100,
                child: DottedBorder(
                  color: Colors.black, //color of dotted/dash line
                  strokeWidth: 3, //thickness of dash/dots
                  dashPattern: [10, 6],
                  //dash patterns, 10 is dash width, 6 is space width
                  child: Align(
                      alignment: Alignment.center,
                      child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Theme.of(context).primaryColor,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                context: context,
                                builder: (context) => Row(
                                      children: [
                                        ListTile(
                                          leading: Icon(Icons.share),
                                          title: Text("Share"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.share),
                                          title: Text("Share"),
                                        ),
                                      ],
                                    ));
                          },
                          child: Icon(
                            Icons.camera_enhance,
                            size: 40,
                          ))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Custome_Textfield(
                  hinttext: "Full Name", width1: 350, icon: Icon(Icons.person)),
              const SizedBox(
                height: 20,
              ),
              Custome_Textfield(
                  hinttext: "Email", width1: 350, icon: Icon(Icons.email)),
              const SizedBox(
                height: 30,
              ),
              Custome_Textfield(
                  hinttext: "Phone Number",
                  width1: 350,
                  icon: Icon(Icons.phone)),
              const SizedBox(
                height: 30,
              ),
              Custome_Textfield(
                  hinttext: "Date Of Birth",
                  width1: 350,
                  icon: Icon(Icons.calendar_month)),
              const SizedBox(
                height: 30,
              ),
              Custome_Textfield(
                  hinttext: "Gender",
                  width1: 350,
                  icon: Icon(Icons.person_add)),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomeButton(
                  label: "Submit",
                  onpressed: () {},
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
