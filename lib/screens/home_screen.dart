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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/bg.jpeg'), fit: BoxFit.cover)
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height*0.3, left: size.width*0.1,
            ),
            child: Column(
              children: <Widget>[
                Text('Welcome to SIY', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 48)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff0c9869),
                  ),
                  child: Text('Masuk', style: TextStyle(fontSize: 24)),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                )
              ],
            ),
          ),  
          Container(
            alignment: Alignment.bottomCenter,
            child: Image.asset('images/kampus.jpeg'),
          )
        ] 
      )
    );
  }
}