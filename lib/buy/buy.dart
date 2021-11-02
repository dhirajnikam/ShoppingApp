import 'package:flutter/material.dart';
import 'package:shopui/coomon/color.dart';

class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  _BuyState createState() => _BuyState();
}

class _BuyState extends State<Buy> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: Mycolor.Backgroungcollor,begin: Alignment.topCenter,end: Alignment.bottomLeft),
        
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
