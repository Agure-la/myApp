import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_login/auth/signup.dart';

import '../auth/login.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KK Fitnes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(),
            _buildHeroSection(),
            _buildFeaturesSection(),
            _buildCTAButton(context),
          ],
        ),
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
      color: Colors.grey[200],
    padding: EdgeInsets.all(16.0),
    alignment: Alignment.center,
    child: Column(
      children: [
        Image.asset(
          'assets/fitne.jpg ',
          height: 200.0,
        ),
        SizedBox(height: 16.0),
        Text(
          'Discover Amazing Features',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
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

Widget _buildFeaturesSection(){
  return Container(
    padding: EdgeInsets.all(16.0),
    child: Column(
      children: [
        _buildFeatureItem('Yoga', 'Lorem ipsum dolor sit amet.'),
        _buildFeatureItem('Zomba', 'Consectetur adipiscing elit.'),
        _buildFeatureItem('Body Builder', 'Vivamus eget nulla nec libero.'),
      ],
    ),
  );
}

Widget _buildFeatureItem(String title, String description) {
  return ListTile(
    leading: Icon(Icons.star),
    title: Text(title),
    subtitle: Text(description),
  );
}

Widget _buildCTAButton(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
              MaterialPageRoute(builder: (context) => LoginCard()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Text(
            'Get Started',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignupCard()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget build(BuildContext context){
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      if(constraints.maxWidth > 600) {
        return _buildWideLayout(context);
      } else {
        return _buildDefaultLayout(context);
      }
    },
  );
}

Widget _buildWideLayout(BuildContext context) {
  return Container(
    width: 400.0,
    child: Column(
      children: [
        _buildHeader(),
        _buildHeroSection(),
        _buildFeaturesSection(),
        _buildCTAButton(context),
      ],
    ),
  );
}

Widget _buildDefaultLayout(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildHeader(),
        _buildHeroSection(),
        _buildFeaturesSection(),
        _buildCTAButton(context),
      ],
    ),
  );
}
