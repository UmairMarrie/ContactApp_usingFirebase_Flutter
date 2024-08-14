import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mytextfield extends StatelessWidget {
  final VoidCallback onpress;
  final String btnname;
  final IconData icon;
  final TextEditingController controller;
  const Mytextfield(
      {super.key,
      required this.onpress,
      required this.btnname,
      required this.icon, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.deepPurple, width: 2)),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintText: "$btnname",
              enabledBorder: InputBorder.none,
              prefixIcon: Icon(icon)),
        ),
      ),
    );
  }
}
