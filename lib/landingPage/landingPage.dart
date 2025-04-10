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

Widget _buildHeroSection() {
  return Container(
    padding: EdgeInsets.all(16.0),
    alignment: Alignment.center,
    child: Column(
      children: [
        Image.asset(
          'assets/images/fit.jpeg',
          height: 200.0,
        ),
        SizedBox(height: 16.0),
        Text(
          'Discover Amazing Features',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget nulla nec libero ullamcorper pharetra.',
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}