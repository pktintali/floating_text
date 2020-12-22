import 'package:flutter/material.dart';
import 'package:floating_text/floating_text.dart';

void main() {
  runApp(MyApp());
}

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
        title: Text(
          'FloatingText Example',
        ),
      ),
      body: Center(
        child: FloatingText(
          text: 'Congratulations',
          repeat: true,
          floatingSpeed: 6,
          textStyle: TextStyle(
            fontSize: 40,
            color: Colors.black54,
          ),
          floatingTextStyle: TextStyle(
            color: Colors.red,
            fontSize: 40,
            shadows: [
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
