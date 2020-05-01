import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soloradarapp/srceens/getting_started_screen.dart';
import 'package:soloradarapp/srceens/login_screen.dart';
import 'package:soloradarapp/srceens/otp_verification_screen.dart';
import 'package:soloradarapp/srceens/splash_screen.dart';
import 'package:soloradarapp/srceens/signup_screen.dart';

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
      home: SplashScreen(),
      //home: OtpScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignupScreen.routeName: (ctx) => SignupScreen(),
        OtpScreen.routeName: (ctx) => OtpScreen(),
      },
    );
  }
}
