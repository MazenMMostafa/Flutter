import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    //Text("Hello World", style: TextStyle(fontSize: 45, color: Colors.red)),
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.title,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontFamily: "dancing",
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic)),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: ListView(shrinkWrap: true, children: [
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Image.network("https://picsum.photos/200/300.jpg",
                            width: screenWidth * 0.5, height: 100),
                        Text("Network Image",
                            style: TextStyle(
                                fontSize: 34,
                                color: Colors.red,
                                fontFamily: "dancing",
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/icons.jpg",
                            width: screenWidth * 0.5, height: 100),
                        Text("Asset Image",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.red,
                                fontFamily: "bebas",
                                fontWeight: FontWeight.w900)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ));
  }
}
