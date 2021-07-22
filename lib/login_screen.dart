import 'package:flutter/material.dart';
import 'package:siy/main_screen.dart';

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

class LoginMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Username(''),
          Password(''),
          ElevatedButton(
            child: Text('Sign In'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class Username extends StatefulWidget {
  final String username;

  Username(this.username);
  
  @override
  _UsernameState createState() => _UsernameState();
}

class _UsernameState extends State<Username> {
  TextEditingController _controller = TextEditingController();

  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: '165xxxxx',
        labelText: 'Your Username',
      ),
    );
  }
}

class Password extends StatefulWidget {
  final String password;

  Password(this.password);
  
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  TextEditingController _controller = TextEditingController();

  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      controller: _controller,
      decoration: InputDecoration(
        hintText: '*********',
        labelText: 'Your Password',
      ),
    );
  }
}