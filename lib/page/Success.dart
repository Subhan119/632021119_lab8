import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Loginss extends StatefulWidget {
  const Loginss({super.key});

  @override
  State<Loginss> createState() => _LoginssState();
}

class _LoginssState extends State<Loginss> {
  final TextEditingController _name =TextEditingController();
  final TextEditingController _tel =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text ('Loginsuccess')),
      body: Center(child: Column(children: [
        TextFormField(
          controller: _name,
          validator: (value) {
            if(value!.isEmpty){
              return "กรุณากรอกชื่อ";
            }
          },
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Enter your username"
          ),
        ),
        TextFormField(
          controller: _tel,
          validator: (value) {
            if(value!.isEmpty){
              return "กรุณากรอกเบอร์";
            }
          },
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter your tel',
          ),
        ),
        ElevatedButton(onPressed: (() {
          final uid = FirebaseAuth.instance.currentUser!.uid;

          CollectionReference user = FirebaseFirestore.instance.collection("Users");
          user.doc(uid).set({
            "name": _name.text,
            "tel": _tel.text, 
          });


        }), child: const Text("Save"))
      ],)
      ),
    );
  }
}