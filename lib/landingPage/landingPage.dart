import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

      ),
    );
  }
}

Widget _buildHeader() {
  return Container(
    padding: EdgeInsets.all(16.0),
    alignment: Alignment.center,
    child: Text(
      'Welcome to KK Fitness',
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}