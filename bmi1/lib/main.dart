import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Dots.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(primaryColor: Colors.black),
      home: Bmi(),
    );
  }
}

class Bmi extends StatefulWidget {
  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  int height = 180;
  int weight = 69;
  double result;
  String lstresult = '00.00';
  double h1;
  double w1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bmi.png'), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'BMI',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Dot(),
                      Dot(),
                      Dot(),
                      Dot(),
                    ],
                  ),
                  Text(
                    'CALCULATOR',
                    style: TextStyle(
                      fontSize: 27.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                  ),
                  Container(
                    child: Text(
                      '$lstresult',
                      style: TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'CM',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            )
                          ]),
                      Slider(
                          value: height.toDouble(),
                          min: 80,
                          max: 300,
                          onChanged: (double newvalue) {
                            setState(() {
                              height = newvalue.round();
                            });
                          })
                    ],
                  )),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'KG',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            )
                          ]),
                      Slider(
                          value: weight.toDouble(),
                          min: 5.0,
                          max: 250.0,
                          onChanged: (double new1value) {
                            setState(() {
                              weight = new1value.round();
                            });
                          })
                    ],
                  )),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        h1 = height.toDouble();
                        w1 = weight.toDouble();
                        result = w1 / pow(h1 / 100, 2);
                        lstresult = result.toStringAsFixed(2);
                      });
                    },
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(color: Colors.black),
                    ),
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
