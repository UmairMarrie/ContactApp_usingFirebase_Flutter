import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_with_firebase/controller/ContactController.dart';
import 'package:flutter_with_firebase/screens/AllContacts.dart';
import 'package:flutter_with_firebase/screens/Components/MyTextField.dart';
import 'package:get/get.dart';

class Addcontact extends StatelessWidget {
  const Addcontact({super.key});

  @override
  Widget build(BuildContext context) {
    Contactcontroller contactcontroller = Get.put(Contactcontroller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Contact App",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          InkWell(
              onTap: () {
                Get.to(Allcontacts());
              },
              child: Icon(
                Icons.select_all,
                size: 40,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: 320,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color.fromARGB(67, 158, 158, 158),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      3.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Add Contacts",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text("Lets Start To add Contacts",style: TextStyle(fontSize: 19),),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Mytextfield(
                      onpress: () {},
                      btnname: "Name",
                      icon: Icons.person,
                      controller: contactcontroller.namecontroller,
                    ),
                    Mytextfield(
                      onpress: () {},
                      btnname: "Number",
                      icon: Icons.numbers,
                      controller: contactcontroller.numbercontroller,
                    ),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: () {
                        contactcontroller.AddContact();
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          "Save Contact",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
