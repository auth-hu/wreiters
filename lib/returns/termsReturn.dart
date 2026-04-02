// ignore_for_file: non_constant_identifier_names, unused_label

import 'package:flutter/material.dart';
import 'package:writers/360/termsPage.dart';
import 'package:writers/600/termsPage600.dart';
import 'package:writers/900/termsPage900.dart';
void main() {
  runApp(const termsRuturn());
}

class termsRuturn extends StatefulWidget {
  const termsRuturn({super.key});

  @override
  State<termsRuturn> createState() => _termsRuturn();
}

class _termsRuturn extends State<termsRuturn>{

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
              return termsPage();
            }
            if (devicewidth <= 900) {
              return termsPage600();
            }
            if (devicewidth <= 1281) {
              return termsPage900();
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