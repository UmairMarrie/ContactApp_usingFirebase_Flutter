import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final IconData iconData;
  const MyTextField(
      {super.key,
      required this.hint,
      required this.iconData,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Color.fromARGB(106, 158, 158, 158),
            borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              prefixIcon: Icon(iconData),
              hintText: hint,
              hintStyle: TextStyle(letterSpacing: 1.5),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
