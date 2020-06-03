
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/widgets/background.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _navigate(){
    Navigator.of(context).pushNamed("/login");
  }

  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Timer(Duration(seconds: 5),_navigate);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Background(),
        Positioned.fill(child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("TIC TAC TOE",style: _headerStyle(),),
            SizedBox(height: 70),
            Container(
              height: 200,
              width: 200,
              child: Image.asset("assets/images/icon-lg.png",fit: BoxFit.cover,),)
          ],
        ))
      ],
    ));  }

    TextStyle _headerStyle(){
      return TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w300,
        fontFamily: "Raleway"
      );
    }
}
