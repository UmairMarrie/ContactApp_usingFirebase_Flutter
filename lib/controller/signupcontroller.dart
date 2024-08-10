import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Signupcontroller extends GetxController {
  
  TextEditingController passcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
   TextEditingController addresscontroller = TextEditingController();
   FirebaseAuth auth = FirebaseAuth.instance;
  

  void SignUp(){
   
   createanAccount(emailcontroller.text,passcontroller.text);
  }

  Future<void> createanAccount(String email,String password) async {
  try{

      await auth.createUserWithEmailAndPassword(email: email,password: password);
     print("Account Created");
  }on FirebaseAuthException catch(ex){
    if(ex == "Weak Password")
  {
    print("weak");
  }
  }

  catch(e){
    print(e);
  }

  }
}