import 'dart:math';
import 'package:flutter/material.dart';
import './color.dart';
import 'random-rgb.dart';




class ColorOptions extends StatelessWidget {

  final Function answerChooseHandler;
  ColorOptions(this.randomR, this.randomG, this.randomB, this.answerChooseHandler);
  int randomR;
  int randomG;
  int randomB;
  @override
  Widget build(BuildContext context) {
    List<int> optionList = [0, 1, 2, 3];

    Random random = Random();
    int answer = random.nextInt(4);

    optionList.remove(answer);


    var randomOptions = {
      answer: {'r': (randomR+r2)~/2, 'g':(randomG+g2)~/2, 'b': (randomB+b2)~/2},
      //answer: {'r': randomR, 'g': randomG, 'b': randomB},
      optionList[0]: {
        'r': random.nextInt(256),
        'g': random.nextInt(256),
        'b': random.nextInt(256)
      },
      optionList[1]: {
        'r': random.nextInt(256),
        'g': random.nextInt(256),
        'b': random.nextInt(256)
      },
      optionList[2]: {
        'r': random.nextInt(256),
        'g': random.nextInt(256),
        'b': random.nextInt(256)
      },
    };

    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ColorOption(randomOptions[0], answerChooseHandler),
            ColorOption(randomOptions[1], answerChooseHandler)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ColorOption(randomOptions[2], answerChooseHandler),
            ColorOption(randomOptions[3], answerChooseHandler)
          ],
        ), Column(
          children: <Widget>[
            Text('RGB($answer)', style: TextStyle(fontSize: 30),),
            Text('($randomR+$r2)', style: TextStyle(fontSize: 30),),
          ],
        )
      ],
    );
  }
}

