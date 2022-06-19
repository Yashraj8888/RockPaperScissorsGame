import 'package:flutter/material.dart';
import './screens/take_name.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      theme: ThemeData.dark(),
      home: TakeName(),
    );
  }
}