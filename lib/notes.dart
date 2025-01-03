import 'package:flutter/material.dart';
import 'package:new_project/sevices/firebase_note_services.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
TextEditingController titleController=TextEditingController();
TextEditingController descriptionController=TextEditingController();
  bool isloading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80),
        child: Column(
          children: [
            TextField(
             controller: titleController,
              decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 248, 217, 249),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.title),
                  labelText: "Title"),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: descriptionController,
              minLines: 7,
              maxLines: 30,
              decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 248, 217, 249),
                  filled: true,
                  
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.description),
                  labelText: "Description"),
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
AddNotes(title:titleController.text, description: descriptionController.text, context: context);
                setState(() {
                  isloading=false;
                });},
              child:isloading ?  CircularProgressIndicator() :
               
              Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ]
        )
    ));
  }
}