import 'package:flutter/material.dart';
import 'package:volta_ao_mundo_2/widgets/Telas/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Login(),
    );
  }
}