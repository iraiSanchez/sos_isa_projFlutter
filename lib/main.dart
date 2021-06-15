import 'package:flutter/material.dart';
import 'package:sos_isa_projeto/pages/login.page.dart';
import 'pages/intro_slide.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOS ISA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: IntroScreen(),
    );

  }
}