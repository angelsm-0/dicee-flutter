import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rigthDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: TextButton(child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed:() {
              changeStateDice();              
            },),
          ),
          Expanded(
            child: TextButton(child: Image.asset('images/dice$rigthDiceNumber.png'),
            onPressed: () {
              changeStateDice();              
            },
            )
          ),       
        ],
      ),
    );
  }
  void changeStateDice (){
    setState(() {
                leftDiceNumber = Random().nextInt(6)+1;
                rigthDiceNumber = Random().nextInt(6)+1;
              });
  }
}
