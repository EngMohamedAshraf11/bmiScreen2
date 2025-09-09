import 'package:flutter/material.dart';
import 'package:my_flutter/bmiScreen2.dart';
import 'package:my_flutter/login_page.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int currentIndex = 0;
  List<Widget> pages = [
    bmiScreen2(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: "BMI",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: "Login",
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
