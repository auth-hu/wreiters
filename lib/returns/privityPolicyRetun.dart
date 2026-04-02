// ignore_for_file: non_constant_identifier_names, unused_label

import 'package:flutter/material.dart';
import 'package:writers/360/privityPolicyPage.dart';
import 'package:writers/600/privityPolicyPage600.dart';
import 'package:writers/900/privityPolicyPage900.dart';
void main() {
  runApp(const privicyPolicyRutern());
}

class privicyPolicyRutern extends StatefulWidget {
  const privicyPolicyRutern({super.key});

  @override
  State<privicyPolicyRutern> createState() => _privicyPolicyRutern();
}

class _privicyPolicyRutern extends State<privicyPolicyRutern>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Rubik',
      ),
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints){
            double devicewidth = constraints.maxWidth;
            if (devicewidth <= 600) {
              return privityPolicyPage();
            }
            if (devicewidth <= 900) {
              return privityPolicyPage600();
            }
            if (devicewidth <= 1281) {
              return privicyPolicyPage900();
            }
            return Scaffold(
              body: Center(
                child: Text("Your width ${devicewidth}"),
              ),
            );
        }
        )
    );
  }
}