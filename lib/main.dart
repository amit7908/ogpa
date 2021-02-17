import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';
import 'dart:async';

import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: MyHomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => MyhomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.orangeAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFF0A0E21),
                        radius: 70.0,
                        child: Icon(
                          Icons.widgets,
                          color: Colors.blue,
                          size: 60,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text(
                        'OGPA CALCULATOR',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    Text(
                      'CALCULATE YOUR GPA',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputcontroller = TextEditingController();
  TextEditingController inputcontroller1 = TextEditingController();
  TextEditingController inputcontroller2 = TextEditingController();
  TextEditingController inputcontroller3 = TextEditingController();
  TextEditingController inputcontroller4 = TextEditingController();
  TextEditingController inputcontroller5 = TextEditingController();

  String getvalue; //to directly store the string value from text feilds
  String getvalue1;
  String getvalue2;
  String getvalue3;
  String getvalue4;
  String getvalue5;

  var value1; //to store thr converted string value text edit controler
  var value2;
  var value3;
  var value4;
  var value5;
  var value6;
  var value7;
  double cal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1D1E33),
          title: Center(child: Text('OGPA CALULATOR')),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10.00),
                      ),
                      child: TextField(
                        controller: inputcontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'ENTER 1st yr GPA'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10.00),
                      ),
                      child: TextField(
                        controller: inputcontroller1,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'ENTER 2nd yr GPA'),
                      ),
                    ),
                  ),
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10.00),
                      ),
                      child: TextField(
                        controller: inputcontroller2,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'ENTER 3rd yr GPA'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10.00),
                      ),
                      child: TextField(
                        controller: inputcontroller3,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'ENTER 4th yr GPA'),
                      ),
                    ),
                  ),
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10.00),
                      ),
                      child: TextField(
                        controller: inputcontroller4,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'ENTER 5th yr GPA'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10.00),
                      ),
                      child: TextField(
                        controller: inputcontroller5,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'ENTER 6th yr GPA'),
                      ),
                    ),
                  ),
                ],
              )),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    getvalue = (inputcontroller.text);
                    getvalue1 = (inputcontroller1.text);
                    getvalue2 = (inputcontroller2.text);
                    getvalue3 = (inputcontroller3.text);
                    getvalue4 = (inputcontroller4.text);
                    getvalue5 = (inputcontroller5.text);
                    value1 = double.parse(getvalue);
                    value2 = double.parse(getvalue1);
                    value3 = double.parse(getvalue2);
                    value4 = double.parse(getvalue3);
                    value5 = double.parse(getvalue4);
                    value6 = double.parse(getvalue5);
                    cal =
                        (value1 + value2 + value3 + value4 + value5 + value6) /
                            6;
                    value7 = cal.toString();
                    print(' valu=$value7');
                  });
                },
                child: Text('CALCULATE'),
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(10.00),
                  ),
                  child: Text(
                    'OGPA\n$value7',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
