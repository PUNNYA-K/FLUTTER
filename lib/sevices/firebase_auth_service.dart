import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_project/bottom_navigation_screen.dart';
import 'package:new_project/profile.dart';

String email = 'abc@gmail.com';

Future<void> signup({required String username, required String email,required String password, required String confirmpassword, required BuildContext context})async {

  
  try{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationScreen()));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registration successful")));


  }catch(e){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    print(e);


  }
}

Future<void>login({required String email, required String password, required BuildContext context})async{

  try{ 
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationScreen()));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login successful")));
  
  }catch(e){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    print(e);


  }

}