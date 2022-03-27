import 'package:aula1/widget_borda.dart';
import 'package:aula1/widget_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bordas",
      theme: ThemeData(
        primaryColor: Colors.blue
        ),
        home: widgetTela(),
    );
  }  
}

