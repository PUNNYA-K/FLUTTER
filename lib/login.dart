import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_project/forgot.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80),
        child: Column(
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text(
              "Enter your credentials to login",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 248, 217, 249),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.person),
                  labelText: "Username"),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 248, 217, 249),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.password),
                  labelText: "Password"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(500, 50),
                backgroundColor: const Color.fromARGB(255, 121, 27, 138),
              ),
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,

            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>ForgotScreen()));
                },
                child: Text("Forgot Password?",style: TextStyle(color: Colors.purple
                ),),
            )
          ],
        ),
      ),
    );
  }
}
