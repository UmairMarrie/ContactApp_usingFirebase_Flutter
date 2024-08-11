import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/screens/auth/Homepage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';


class Logincontroller extends GetxController {

  TextEditingController passcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  void Login() async {

    try{
    await auth.signInWithEmailAndPassword(email: emailcontroller.text,password: passcontroller.text);
    Fluttertoast.showToast(msg: "Login Sucsess",backgroundColor: Colors.green);
    Get.offAll(Homepage());
    print("Login");
    }on FirebaseAuthException catch(e){
          Fluttertoast.showToast(msg: "Exception",backgroundColor: Colors.red);
    }
    

    catch(e){
      print(e);
    }



  }


}