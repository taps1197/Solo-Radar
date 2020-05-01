import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soloradarapp/srceens/getting_started_screen.dart';
import 'package:soloradarapp/srceens/login_screen.dart';
import 'package:soloradarapp/srceens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      //home: SplashScreen(),
      home: LoginScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
      },
    );
  }
}
