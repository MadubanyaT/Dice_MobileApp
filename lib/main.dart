import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//Challenge make the code use 1 variable with different values when pressed

//used for dynamic user interaction
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DiceState createState() => _DiceState();
}

//helps with changing the state
class _DiceState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  void randomNumber() {
    //Helps to state that we're updating the state by calling...
    // build again
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  randomNumber();
                },
                child: Image.asset('images/dice$leftDice.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  randomNumber();
                },
                child: Image.asset('images/dice$rightDice.png')),
          ),
        ],
      ),
    );
  }
}

//Used for static user interaction
// class DicePage extends StatelessWidget {
//   int leffnum = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: TextButton(
//               onPressed: (){
//                 leffnum = Random(1). 2;
//                 print(leffnum);
//               },
//                 child: Image.asset('images/dice$leffnum.png')
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: (){
//                 print('right');
//               },
//                 child: Image.asset('images/dice1.png')),
//           ),
//         ],
//       ),
//     );
//   }
// }
