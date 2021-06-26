import 'dart:math';
import 'package:flutter/material.dart';
import 'main.dart';

int r2;
int g2;
int b2;



class RGB extends StatelessWidget {

  int randomR;
  int randomG;
  int randomB;

  RGB(this.randomR, this.randomG, this.randomB);

  @override
  Widget build(BuildContext context) {

    randomR = Random().nextInt(256);
    randomG = Random().nextInt(256);
    randomB = Random().nextInt(256);
    r2 = Random().nextInt(256);
    g2 = Random().nextInt(256);
    b2 = Random().nextInt(256);

    return Center(
      child: Stack(
          children:[
            Positioned(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 60, //水平
                    vertical: 60, //垂直
                  ),
                  width: 600,
                  height: 150,
                  color: Colors.transparent,
                )
            ),Positioned(
              left: 50,
                top: 80,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Color.fromRGBO(randomR, randomG, randomB, 1),
                )
            ),
            Positioned(
                //left: 100,
              right: 50,
                top: 80,
                //right: 100,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Color.fromRGBO(r2, g2, b2, 1),
                )
            ),Positioned(
                left: 50,
                top: 190,
                //right: 100,
                child: Text('($randomR, $randomG, $randomB)', style: TextStyle(fontSize: 20),),//Text('+', style: TextStyle(fontSize: 50),)
            ),Positioned(
              right: 50,
              top: 190,
              //right: 100,
              child: Text('($r2, $g2, $b2)', style: TextStyle(fontSize: 20),),//Text('+', style: TextStyle(fontSize: 50),)
            ),
          ]
      ),
      );
  }

}








































  /*Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30
      ),
      child: Card(
        child: Container(
          width: 50,
          height: 50,
          color: Colors.deepOrangeAccent,
          //padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            'RGB($randomR, $randomG, $randomB)',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
  }*/


