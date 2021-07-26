import 'package:flutter/material.dart';
import 'package:siy/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return HomeMobile();
        } else {
          return Text('web');
        }
      }
    );
  }
}

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset('images/kampus.jpeg'),
            margin: EdgeInsets.only(top: 450),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Welcome to SIY'),
              TextButton(
                child: Text('Login'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              )
            ],
          )
        ] 
      )
    );
  }
}