import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/controller/signupcontroller.dart';
import 'package:flutter_with_firebase/screens/auth/Widgets/MyButton.dart';
import 'package:flutter_with_firebase/screens/auth/Widgets/TextField.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Signupcontroller signupcontroller = Get.put(Signupcontroller());
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
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
                    "Create Your Account",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                MyTextField(
                  hint: "Email",
                  controller: signupcontroller.emailcontroller,
                  iconData: Icons.person,
                ),
                MyTextField(
                  hint: "pass",
                  controller: signupcontroller.passcontroller,
                  iconData: Icons.password,
                ),
                MyTextField(
                  hint: "Address",
                  controller: signupcontroller.addresscontroller,
                  iconData: Icons.home,
                )
              ],
            ),
            Mybutton(
              onpress: () {
                signupcontroller.SignUp();
              },
              btnName: "SignUp",
            )
          ],
        ),
      ),
    );
  }
}
