import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage("assets/images/registerimg.PNG")),
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
                  height: 40,
                ),
                
                
                // const SizedBox(
                //   height: 20,
                // ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/otp");
                  },
                  child: const Text(
                    "Register",
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
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: const Text(
                          "Login now",
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