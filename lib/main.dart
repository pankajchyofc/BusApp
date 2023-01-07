import 'package:busapp/screens/BusTicket/bushomepage.dart';
import 'package:busapp/screens/authentication/changepass.dart';
import 'package:busapp/screens/authentication/createpassword.dart';
import 'package:busapp/screens/authentication/forgetpass.dart';
import 'package:busapp/screens/authentication/loginpage.dart';
import 'package:busapp/screens/authentication/otp2.dart';
import 'package:busapp/screens/authentication/otpverify.dart';
import 'package:busapp/screens/authentication/register.dart';

import 'package:busapp/screens/landingpage.dart';
import 'package:busapp/screens/morepage.dart';
import 'package:busapp/screens/profile.dart';
import 'package:busapp/screens/welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
        //scaffoldBackgroundColor: Color.fromARGB(255, 238, 253, 222)
      ),
      //home: const WelcomePage(),
      initialRoute: '/welcome',
      routes: {
       '/welcome':(context) => const WelcomePage(),
       '/login':(context) => const LoginPage(),
       '/register':(context) => const RegisterPage(),
       '/otp':(context) => const OTPPage(),
       '/createpass':(context) => const CreatePassowrd(),
       '/forgetpass':(context) => const ForgotPassword(),
       '/changepass':(context) => const ChangePassword(),
       '/otp2':(context) => const OTPChangePass(),
       '/landingpage':(context) => const LandingPage(),
       '/profile':(context) => const ProfilePAge(),
       '/morepage':(context) => const MorePage(),
       '/bushomepage':(context) => const BusTicketHomePage()

      },
    );
  }
}

