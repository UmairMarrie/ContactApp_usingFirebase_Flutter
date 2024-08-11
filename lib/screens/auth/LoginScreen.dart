import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/controller/loginController.dart';
import 'package:flutter_with_firebase/controller/signupcontroller.dart';
import 'package:flutter_with_firebase/screens/auth/Widgets/MyButton.dart';
import 'package:flutter_with_firebase/screens/auth/Widgets/TextField.dart';
import 'package:flutter_with_firebase/screens/auth/signup_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Logincontroller logincontroller = Get.put(Logincontroller());
    return Scaffold(
      appBar: AppBar(
        title: Text("Login",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    height: 150,
                    width: 200,
                    "https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-83.jpg?w=740&t=st=1723294479~exp=1723295079~hmac=b23bb6e38846a3ec9b6162ad9eb6e7c413a8d42e4d9b04343d0aaa8748a55139" ??
                        "unknown"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    "Login Your Account",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                MyTextField(
                  hint: "Email",
                  controller: logincontroller.emailcontroller,
                  iconData: Icons.person,
                ),
                MyTextField(
                  hint: "pass",
                  controller: logincontroller.passcontroller,
                  iconData: Icons.password,
                ),
            
              ],
            ),
            Mybutton(
              onpress: () {
                logincontroller.Login();
              },
              btnName: "Login",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Not Have an account?"),
              SizedBox(width: 8,),
              InkWell(
                onTap: () {
                  Get.to(SignupScreen(),);
                },
                child: Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
            ],)
          ],
        ),
      ),
    );
  }
}
