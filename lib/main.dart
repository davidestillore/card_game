import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(4286695300),
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Center(
          child: Text(
            'High-Low',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: CardPick(),
    ),
  ));
}

class CardPick extends StatefulWidget {
  @override
  _CardPickState createState() => _CardPickState();
}

class _CardPickState extends State<CardPick> {
  int cardNumber = 1;
  void random() {
    setState(() {
      cardNumber = Random().nextInt(53) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: FlatButton(
                onPressed: () {
                  random();
                },
                child: Image.asset('images/card$cardNumber.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
