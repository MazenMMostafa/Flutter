import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Project 1'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: CustomWidget(),
        ),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'lib/1.png',
          width: 150,
          height: 150,
        ),
        SizedBox(height: 20),
        Text(
          'First Image',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 40),
        Image.asset(
          'lib/2.png',
          width: 150,
          height: 150,
        ),
        SizedBox(height: 20),
        Text(
          'Second Image',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
