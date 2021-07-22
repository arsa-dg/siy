import 'package:flutter/material.dart';
import 'package:siy/home_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return MainMobile();
        } else {
          return Text('web');
        }
      }
    );
  }
}

class MainMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Arsa'),
            Text('13519037'),
            Text('Ip sekian'),
            TextButton(
              child: Text('Logout'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
            )
          ],
        )
      )
    );
  }
}