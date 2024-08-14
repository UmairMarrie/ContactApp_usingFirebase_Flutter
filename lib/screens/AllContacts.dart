import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/Model/ContactModel.dart';
import 'package:flutter_with_firebase/controller/ContactController.dart';
import 'package:flutter_with_firebase/screens/Components/Listtile.dart';
import 'package:flutter_with_firebase/screens/Components/MyTextField.dart';
import 'package:get/get.dart';

class Allcontacts extends StatelessWidget {
  const Allcontacts({super.key});

  @override
  Widget build(BuildContext context) {
    Contactcontroller contactController = Get.put(Contactcontroller());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Contacts",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          MyTile(),
          

        ]
        
            
        ),
      )
    );
  }
}
