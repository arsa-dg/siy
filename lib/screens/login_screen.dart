import 'package:flutter/material.dart';
import 'package:siy/screens/main_screen.dart';
import 'package:siy/model/account.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return LoginMobile();
        } else {
          return Text('web');
        }
      }
    );
  }
}

class LoginMobile extends StatefulWidget {
  LoginMobileState createState() => LoginMobileState();
}

class LoginMobileState extends State<LoginMobile> {
  String _uname = '';
  String _pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: TextField(
                onChanged: (String value) {
                  setState(() {
                    _uname = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'kakek salto',
                  labelText: 'Username'
                ),
              )
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: TextField(
                onChanged: (String value) {
                  setState(() {
                    _pass = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '********',
                  labelText: 'Password'
                ),
              )
            ),
            ElevatedButton(
              child: Text('Sign In'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff0c9869),
              ),
              onPressed: () {
                var i = accounts.indexWhere((element) => element.username == _uname);
                if (i != -1 && _pass == accounts[i].password){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen(i)));
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Username/Password salah. Cek account.dart'),
                      );
                    }
                  );
                }
              },
            ),
          ],
        ),
      )
    );
  }
}