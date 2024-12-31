import 'package:flutter/material.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(padding: const EdgeInsets.all(80),
      child: Column(children: [
        Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),

            Text(
              "Create your account",
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
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email"),
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
             TextField(
              decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 248, 217, 249),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.password),
                  labelText: "Confirm Password"),
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
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,

            ),
      ],),) ,
    );
  }
}