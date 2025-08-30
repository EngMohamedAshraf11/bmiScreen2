
import 'package:flutter/material.dart';
import 'bmiScreen2.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: bmiScreen2(

      ), 
    );
  }
}
