import 'package:flutter/material.dart';
import 'package:siy/screens/home_screen.dart';
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // biar gaada shadow
        leading: IconButton(
          icon: Icon(
            Icons.logout_outlined,
            color: Colors.white,  
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          }),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.1,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Color(0xff0c9869),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36)
                      )
                    ),
                  ),
                  Text(
                    'Hai, '+accounts[i].name+'!', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26
                    ),
                  )
                ]
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100,left: 9, right: 9),
              height: size.height*0.07,
              width: size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff0c9869),
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
              child: Text(
                'Data Mahasiswa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 10, right: 10),
              elevation: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('NIM', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text('Nama', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text('Fakultas', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text('Program Studi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text('Dosen Wali', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text('IP & IPK', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(accounts[i].nim, style: TextStyle(fontSize: 18)),
                      Text(accounts[i].name, style: TextStyle(fontSize: 18)),
                      Text(accounts[i].fakultas, style: TextStyle(fontSize: 18)),
                      Text(accounts[i].prodi, style: TextStyle(fontSize: 18)),
                      Text(accounts[i].doswal, style: TextStyle(fontSize: 18)),
                      Text(accounts[i].ipk, style: TextStyle(fontSize: 18)),
                    ],
                  )
                ],
              ),
            )
          ],
        )
      )
    );
  }
}