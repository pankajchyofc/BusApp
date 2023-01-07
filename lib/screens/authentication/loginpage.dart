import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage("assets/images/loginimg.PNG")),
            Form(
                child: Column(
              children: [
                Container(
                    width: 350,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(

                          prefixIcon: const Icon(Icons.phone),
                          hintText: "Phone Number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          contentPadding: const EdgeInsets.all(5)),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: 350,
                    child: TextFormField(
                      obscureText: true,
                      //style: TextStyle(fontSize: 10),
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: const Icon(Icons.visibility),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          contentPadding: const EdgeInsets.all(5)),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/forgetpass");
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff02AD24),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/landingpage");
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff02AD24),
                      minimumSize: const Size(200, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don\'t have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        child: const Text(
                          "Register now",
                          style: TextStyle(
                            //fontSize: 18,
                            color: Color(0xff02AD24),
                          ),
                        )),
                  ],
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
