import 'package:busapp/constants/color.dart';
import 'package:busapp/screens/account.dart';
import 'package:busapp/screens/drawer.dart';
import 'package:busapp/screens/homepage.dart';
import 'package:busapp/screens/myticket.dart';
import 'package:busapp/screens/mytrip.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
 
  var myindex=0;
  final List<Widget> _children=[
    HomePage(),
    MyTicketPage(),
    MyTripPage(),
    AccountPage()
  ];
   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        
          
          //foregroundColor: Colors.black,
          
          // title: Container(
          //   width: 100,
          //   height: 50,
          //  child: Image.asset("assets/images/pc.PNG"),
          // ),
          // flexibleSpace: Container(
          //   decoration: const BoxDecoration(
          //     gradient: LinearGradient(colors: [Color(0xff02AD24), Colors.grey], begin: Alignment.bottomLeft,end: Alignment.bottomRight),
          //     //image: DecorationImage(image: AssetImage("assets/images/pc.PNG"),fit: BoxFit.cover)
              
          //   ),
          // ),
          
          backgroundColor: appBarGradient.backgroundColor,
          // leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu), 
          // color: Colors.white, hoverColor: Colors.black, iconSize: 20,),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notification_add),tooltip: "notification",),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],
    
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(20)
          // ),
         elevation: 5,
         
          
    
        ),
      //backgroundColor: Colors.,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white)
        ),
        child: CurvedNavigationBar(items: [
          Icon(Icons.home, size: 30),

          Container(
            width: 60,
                  height: 52,
                  child: Column(
                    children: [Icon(Icons.bus_alert_rounded, size: 30), Text("Tickets",style: TextStyle(color: Colors.white),)],
                  ),
            ),
          Container(
            width: 60,
                  height: 52,
                  child: Column(
                    children: [Icon(Icons.calendar_month_outlined, size: 30), Text("Trips",style: TextStyle(color: Colors.white),)],
                  ),
            ),
         Container(
          width: 60,
                  height: 52,
                  child: Column(
                    children: [Icon(Icons.person, size: 30), Text("Profile",style: TextStyle(color: Colors.white),)],
                  ),
            ),
        ],
        //key: _bottomNavigationKey,
        height: 60,
        color: Colors.grey,
        buttonBackgroundColor: Color(0xff02AD24),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index){
          setState(() {
            myindex=index;
          });
        },
        ),
      ),
      body: _children[myindex]
    );
  }
}