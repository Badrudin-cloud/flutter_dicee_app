import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text("Dicee"),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  child: Image.asset("assets/dice$leftDiceNumber.png"),
                  onPressed: (){
                    changeDiceFace();
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset("assets/dice$rightDiceNumber.png"),
                  onPressed: (){
                    changeDiceFace();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
