import 'package:flutter/material.dart';
import 'landingPage/landingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _themeData,
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      // home: DefaultTabController(
      //   length: 2,
      //   child: Scaffold(
      //     appBar: AppBar(
      //       title: Text('Login & Signup'),
      //       bottom: TabBar(tabs: [
      //         Tab(text: 'Login'),
      //         Tab(text: 'Signup'),
      //       ],
      //       ),
      //     ),
      //     backgroundColor: Colors.grey,
      //     body: TabBarView(
      //         children: [
      //           LoginCard(),
      //           SignupCard(),
      //         ],
      //     ),
      //   ),
      // ),
    );
  }
}

ThemeData _themeData = ThemeData(
  primaryColor: Colors.blue,
  hintColor: Colors.green,
  fontFamily: 'Roboto',
);

TextStyle _headerStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

TextStyle _bodyStyle = TextStyle(
  fontSize: 16.0,
  color: Colors.grey,
);