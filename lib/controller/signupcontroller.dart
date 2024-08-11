

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Signupcontroller extends GetxController {
  
  TextEditingController passcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
   TextEditingController addresscontroller = TextEditingController();
   FirebaseAuth auth = FirebaseAuth.instance;
  

  void SignUp(){
   
   createanAccount(emailcontroller.text,passcontroller.text);
  }

  void createanAccount(String email,String password) async {
  try{

     await auth.createUserWithEmailAndPassword(email: email,password: password);
   Fluttertoast.showToast(msg: "Account created",backgroundColor: Colors.green);
    print("Accout created");
  }
  

  catch(e){
    print(e);
  }

  }
}