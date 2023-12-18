import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text(
            'Dicee',
            style: 
            TextStyle(
              color: Colors.white
            ),
            ),
            backgroundColor: Colors.black,
        ),
        body: const DicePage(),
      )
    )
  );
}



class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}



class _DicePageState extends State<DicePage> {

void updateState() {
  setState(() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  });
}

  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                child: Image.asset('images/dice$leftDice.png'),
                onPressed: () {
                  updateState();
                },
              ),
            ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDice.png'),
              onPressed: () {
                updateState();
              },
            ),
          )
        ],
      ),
    );
  }
}