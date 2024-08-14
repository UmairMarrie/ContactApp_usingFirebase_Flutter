import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/Model/ContactModel.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class Contactcontroller extends GetxController {

TextEditingController namecontroller = TextEditingController();
TextEditingController numbercontroller = TextEditingController();
 final db = FirebaseFirestore.instance;
 final uuid = Uuid();

@override
void onInit(){
  super.onInit();
  Getcontacts();
}
 var contactlist = RxList<ContactModel>();

 void AddContact ()  async {
  String id = uuid.v4();
 var contact  = ContactModel(name: namecontroller.text,
 number: numbercontroller.text,id: id);
 await db.collection("Contacts").doc(id).set(contact.toJson()).whenComplete(() {
   Fluttertoast.showToast(msg: "Contact Added.",backgroundColor: Colors.green);
   namecontroller.clear();
   numbercontroller.clear();
   Getcontacts();
   
 },);



 }


void Getcontacts () async {

  var contacts = await db.collection("Contacts").get();
   contactlist.clear();
  for(var cont in contacts.docs){
   
    contactlist.add(ContactModel.fromJson(cont.data()));

  }
}


void DeleteContact (String id) async {
  await db.collection("Contacts").doc(id).delete();
   Fluttertoast.showToast(msg: "Contact Deleted.",backgroundColor: Colors.green);
  Getcontacts();
  Get.back();
}

void updateContacts (ContactModel contactm) async {

  var updateContacts = ContactModel(name: namecontroller.text,number: numbercontroller.text,id: contactm.id);

  await db.collection("Contacts").doc(contactm.id).set(updateContacts.toJson());
   Fluttertoast.showToast(msg: "Contact Updated.",backgroundColor: Colors.green);
  Get.back();
  Getcontacts();
}

}