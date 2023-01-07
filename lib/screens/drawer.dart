

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
//   _launchURLBrowser() async {
//   var url = Uri.parse("https://www.geeksforgeeks.org/");
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(
      children: [
        Container(width: double.infinity,
        height: 200,),
        ListTile(leading: Icon(Icons.login),title: Text("Login/Signup"),onTap: (){
          Navigator.pushNamed(context, "/login");
        },),
        ListTile(leading: Icon(Icons.person),title: Text("Profile"),onTap: (){
          Navigator.pushNamed(context, "/profile");
        },),
        ListTile(leading: Icon(Icons.file_copy),title: Text("About  HAmroYatra"),onTap: (){
          // Navigator.pushNamed(context, "/login");
        },),
        ListTile(leading: Icon(Icons.policy),title: Text("Policies"),onTap: (){
          // Navigator.pushNamed(context, "/login");
        },),
        ListTile(leading: Icon(Icons.rate_review),title: Text("Rate Us"),onTap: (){
          // Navigator.pushNamed(context, "/login");
        },),
        ListTile(leading: Icon(Icons.support),title: Text("Support"),onTap: (){
          // Navigator.pushNamed(context, "/login");
        },),
        ListTile(leading: Icon(Icons.logout),title: Text("LogOut"),onTap: (){
          // Navigator.pushNamed(context, "/login");
        },),
        SizedBox(height: 30,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          InkWell(onTap:(){
            launchUrl(Uri.parse("https://www.geeksforgeeks.org/"));
            
          },
            child: Image(image: AssetImage("assets/images/facebook.png"),width: 40,height: 30,),
          ),
          InkWell(onTap: (){},
            child: Image(image: AssetImage("assets/images/instagram.png"),width: 40,height: 30,),
          ),
          InkWell(onTap: (){},
            child: Image(image: AssetImage("assets/images/youtube.png"),width: 40,height: 30,),
          ),
          InkWell(onTap: (){},
            child: Image(image: AssetImage("assets/images/linkedin.png"),width: 40,height: 30,),
          ), 
        ],)
      ],
    ),

    );
  }
}