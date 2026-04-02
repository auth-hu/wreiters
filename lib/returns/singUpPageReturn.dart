// ignore_for_file: non_constant_identifier_names, unused_label

import 'package:flutter/material.dart';
import 'package:writers/360/singUpPage.dart';
import 'package:writers/600/singUpPage600.dart';
import 'package:writers/900/singUpPage900.dart';

void main() {
  runApp(const singUpPageReturn());
}

class singUpPageReturn extends StatefulWidget {
  const singUpPageReturn({super.key});

  @override
  State<singUpPageReturn> createState() => _singUpPageReturn();
}

class _singUpPageReturn extends State<singUpPageReturn>{

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
              return signUpPage();
            }
            if (devicewidth <= 900) {
              return signUpPage600();
            }
            if (devicewidth <= 1281) {
              return signUpPage900();
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