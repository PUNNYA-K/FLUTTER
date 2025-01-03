import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 222, 187, 229),
        body: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4U7tDHoPxJBlQ-DCQs7-Nj6kFaDNaDXJzdg&s'),
            ),
            Text(FirebaseAuth.instance.currentUser?.email??'Name'),
            Text("Flutter Developer", style: TextStyle(color: const Color.fromARGB(255, 111, 25, 127))),
            Divider(indent: 100, endIndent: 100),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              margin: EdgeInsets.all(10),
              width: 270,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text("7306625215")
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              margin: EdgeInsets.all(10),
              width: 270,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.purple),
                  SizedBox(
                    width: 30,
                  ),
                  Text("punnyak8@gmail.com")
                ],
              ),
            )
          ],
        ));
  }
}
