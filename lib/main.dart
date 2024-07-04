import 'package:flutter/material.dart';

void main() {
  const companyNameWidget = Text('TechOrda', style: TextStyle(color: Colors.lightGreen, fontSize: 60));
  const questionWidget = Text('Did you like the introductory Flutter course from Codecademy?',
  style: TextStyle(color: Colors.orange, fontSize: 35));
  var companyNameDecoration = BoxDecoration(
      color:Colors.brown,
      border: Border.all(color: Colors.orangeAccent, width: 5),
      borderRadius: BorderRadius.circular(20));
  const myMargin = EdgeInsets.symmetric(horizontal: 300);
  const myPadding = EdgeInsets.symmetric(horizontal: 10);
  var thumbsWidget = const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(Icons.thumb_up, color: Colors.purple, size: 50),
      Icon(Icons.thumb_down, color: Colors.black54, size: 50)
    ],
  );
  runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(margin: myMargin, padding: myPadding, decoration: companyNameDecoration, height: 100, child: companyNameWidget),
              questionWidget, thumbsWidget])
            )
          )
  );
}