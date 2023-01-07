import 'package:flutter/material.dart';

class Custome_Textfield extends StatelessWidget {
  final String hinttext;
  final double width1;
  final Icon? icon;
  Custome_Textfield({super.key, required this.hinttext, required this.width1, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width1,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: icon,
              hintText: hinttext,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              contentPadding: const EdgeInsets.all(5)),
        ));
  }
}
