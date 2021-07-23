import 'package:flutter/material.dart';
import 'package:siy/home_screen.dart';
import 'package:siy/model/account.dart';

class MainScreen extends StatelessWidget {
  final int i;

  MainScreen(this.i);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return MainMobile(i);
        } else {
          return Text('web');
        }
      }
    );
  }
}

class MainMobile extends StatelessWidget {
  final int i;

  MainMobile(this.i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('NIM: '+accounts[i].nim),
            Text('Nama: '+accounts[i].name),
            Text('Fakultas: '+accounts[i].fakultas),
            Text('Program Studi: '+accounts[i].prodi),
            Text('Dosen Wali: '+accounts[i].doswal),
            Text('IP & IPK: '+accounts[i].ipk),
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