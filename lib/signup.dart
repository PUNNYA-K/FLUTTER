import 'package:flutter/material.dart';
import 'package:new_project/login.dart';
import 'package:new_project/sevices/firebase_auth_service.dart';

class Signuppage extends StatefulWidget {
  

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  TextEditingController usernameController=TextEditingController();

  TextEditingController passwordController=TextEditingController();

  TextEditingController emailController=TextEditingController();

  TextEditingController confirmpasswordController=TextEditingController();

  bool isloading=false;

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
              controller: usernameController,
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
              controller: emailController,
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
             TextField(
              controller: confirmpasswordController,
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
              onPressed: () async{
                setState(() {
                  isloading= true;
                });
                await  signup(username: usernameController.text, email: emailController.text, password: passwordController.text, confirmpassword: confirmpasswordController.text,context: context);
                setState(() {
                  isloading=false;
                });},
              child:isloading ?  CircularProgressIndicator() : Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,

            ),

            Text("or"),

            ElevatedButton(
              
              
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.purple),
                fixedSize: Size(500, 50),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {},
              child: Text(
                "Sign in with Google",
                style: TextStyle(
                  color:Colors.purple
                  
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [Text("Already have an account?"),

            SizedBox(width: 20),
            
            GestureDetector(
              onTap: () {
                Navigator.pop(context, 
                MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                child: Text("Login",style: TextStyle(color: Colors.purple
                ),),
            )],)

            
      ],),) ,
    );
  }
}

