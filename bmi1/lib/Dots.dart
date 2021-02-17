import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.0),
      width: 6.0,
      height: 6.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
    );
  }
}
