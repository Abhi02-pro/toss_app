import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MaterialApp(
      home: Toss(),
    ));

class Toss extends StatefulWidget {
  @override
  _TossState createState() => _TossState();
}

class _TossState extends State<Toss> {
  String outcome = "Click the image to flip the coin !";
  String imageURL = "images/flip.jpg";
  int coinNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ALOK CITY CRICKET CLUB",
          style: mainTextStyle(20),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Column(
              children: [
                Divider(
                  thickness: 1.0,
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 100,
                        color: Colors.transparent,
                        child: Center(
                          child: Text(
                            "Team 1",
                            style: mainTextStyle(25),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "v/s",
                          style: mainTextStyle(20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 100,
                        color: Colors.transparent,
                        child: Center(
                          child: Text(
                            "Team 2",
                            style: mainTextStyle(25),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Ready For The Toss !",
                    style: mainTextStyle(30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton(
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(imageURL),
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        coinNumber = Random().nextInt(14) + 1;
                        imageURL = "images/coin$coinNumber.png";
                        if (coinNumber % 2 == 0) {
                          outcome = "It's TAILS !";
                        } else {
                          outcome = "It's HEADS !";
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        outcome,
                        style: mainTextStyle(20),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.0,
                          color: Colors.white,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle mainTextStyle(double size) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
}
