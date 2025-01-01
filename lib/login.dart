import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_project/forgot.dart';
import 'package:new_project/profile.dart';
import 'package:new_project/sevices/firebase_auth_service.dart';
import 'package:new_project/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();
bool isloading=false;

  

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
              controller: emailController,
              decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 248, 217, 249),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.person),
                  labelText: "Email"),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: passwordController,
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
              onPressed: ()async {
                setState(() {
                  isloading= true;
                });
                await  login(email: emailController.text,  password: passwordController.text, context: context);
                setState(() {
                  isloading=false;
                });},
              child:isloading ?  CircularProgressIndicator() : Text(
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
            ),
            SizedBox(height: 150
            ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [Text("Dont have an account?"),
            
            SizedBox(width: 20),
            
            GestureDetector(
              onTap: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>Signuppage()));
                },
                child: Text("Sign Up",style: TextStyle(color: Colors.purple
                ),),
            )],)
          ],
        ),
      ),
    );
  }
}
