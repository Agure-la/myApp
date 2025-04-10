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

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(20.0),
        child: Padding(
            padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  //handle login logic
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(20.0),
        child: Padding(
            padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Full Name'),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Confirm Password'),
                obscureText: true,
              ),
              SizedBox(height:20),
              ElevatedButton(
                onPressed: () {
                  //handle sign up logic
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
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