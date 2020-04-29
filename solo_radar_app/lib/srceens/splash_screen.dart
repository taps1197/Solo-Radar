import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:soloradarapp/srceens/getting_started_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<SplashScreen>{

  Future<bool> _mockCheckForSession() async{
    await Future.delayed(Duration(milliseconds: 6000),() {});
    return true;
  }

  @override
  void initState(){
    super.initState();
    _mockCheckForSession().then(
            (status){
          if(status){
            _navigateToHome();
          }
          else{
            _navigateToHome(); // _navigateToLogin();
          }
        }
    );
  }

  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => GettingStartedScreen()
        )
    );
  }

  /*void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen()
        )
    );
  }*/

  @override
  Widget build(BuildContext Context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'The Social Distancing App',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}