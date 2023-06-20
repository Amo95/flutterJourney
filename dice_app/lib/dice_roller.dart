import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
    
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

int currentDiceRoll = 1;


 void rollDice(){
   setState(() {
     currentDiceRoll = randomizer.nextInt(6) + 1;
   });
 }

  @override
  Widget build(context){
      return  InkWell(
        onTap: rollDice,
        child: Image.asset(
          'assets/images/dice-images/dice-$currentDiceRoll.png',
          width: 200,
        ),
      );
      // Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //         Image.asset(
      //         'assets/images/dice-images/dice-$currentDiceRoll.png',
      //         width: 200),
      //         const SizedBox(height: 20,),
              // TextButton(
              //   onPressed: rollDice, 
              //   style: TextButton.styleFrom(
              //     // padding: const EdgeInsets.only(top: 20),
              //     textStyle: const TextStyle(
              //     fontSize: 28,
              //   ),
              //   foregroundColor: Colors.white),
                  
              //   child: const Text('Roll Dice')),
            //   ],
            // );
  }
}