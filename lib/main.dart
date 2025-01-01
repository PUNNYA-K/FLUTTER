import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_project/firebase_options.dart';
import 'package:new_project/login.dart';
import 'package:new_project/profile.dart';
import 'package:new_project/signup.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MaterialApp(home: LoginPage()) );
}

