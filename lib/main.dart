// ignore_for_file: non_constant_identifier_names, unused_label

import 'package:flutter/material.dart';
import 'package:writers/360/logInPage.dart';
import 'package:writers/600/logInPage600.dart';
import 'package:writers/900/logInPage900.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

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
              return logInPage();
            }
            if (devicewidth <= 900) {
              return logInPage600();
            }
            if (devicewidth <= 1281) {
              return logInPage900();
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