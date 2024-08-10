import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mybutton extends StatelessWidget {
  final VoidCallback onpress;
  final String btnName;
  const Mybutton({super.key, required this.onpress, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onpress,
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.deepPurple, borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            "$btnName",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )),
        ),
      ),
    );
  }
}
