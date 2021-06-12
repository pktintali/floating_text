//Author : Pradeep Tintali
//github : github.com/pktintali

import 'package:flutter/material.dart';
import 'package:floating_text/floating_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FloatingText Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CustomCardsExample(),
    );
  }
}

class CustomCardsExample extends StatefulWidget {
  @override
  _CustomCardsExampleState createState() => _CustomCardsExampleState();
}

class _CustomCardsExampleState extends State<CustomCardsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'FloatingText Example',
        ),
      ),
      body: Center(
        //Using Floating Text as a Widget
        child: const FloatingText(
          text: 'Congratulations',
          repeat: true,
          duration: Duration(milliseconds: 150),
          // isRTL: true,
          //Customize your text
          textStyle: const TextStyle(
            fontSize: 40,
            color: Colors.black54,
          ),
          //Customize your Floating text
          floatingTextStyle: const TextStyle(
            color: Colors.red,
            fontSize: 50,
            shadows: const [
              BoxShadow(
                color: Colors.yellow,
                blurRadius: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
