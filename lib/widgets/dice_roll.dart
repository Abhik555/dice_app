import 'dart:math';
import 'package:dice_app/widgets/styles_text.dart';
import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

final randomizer = Random();

class _DiceRollState extends State<DiceRoll> {
  var img = 'assets/dice-images/dice-1.png';
  var dicenumber = randomizer.nextInt(6) + 1;

  void onpress() {
    var newnumber = Random().nextInt(6) + 1;
    if (newnumber != dicenumber) {
      setState(() {
        dicenumber = newnumber;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/dice-images/dice-$dicenumber.png',
            width: 200,
          ),
          const SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: onpress,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue),
            child: const StyledText('Roll Dice'),
          ),
        ],
      ),
    );
  }
}
