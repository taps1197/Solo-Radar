import 'package:flutter/material.dart';
import 'package:soloradarapp/srceens/getting_started_screen.dart';
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
      home: GettingStartedScreen(),
    );
  }
}
