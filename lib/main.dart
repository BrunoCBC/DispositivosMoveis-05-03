import 'package:aula12_03/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyHomePage(title: 'Aula 12 03'),
      theme: ThemeData(colorSchemeSeed: Color.fromARGB(255, 53, 53, 53)),
      debugShowCheckedModeBanner: false,
    ),
  );
}
