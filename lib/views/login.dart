import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/widgets/background.dart';
import 'package:tic_tac_toe_game/widgets/customTextField.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Background(),
        Positioned.fill(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Container(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      "assets/images/icon-sm.png",
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  height: 150,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(children: [
                    CustomTextField(
                      "Email",
                      icon: Icons.mail,
                    ),
                    SizedBox(height: 30),
                    CustomTextField(
                      "Password",
                      icon: Icons.lock,
                      isPassword: true,
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("Forgot Password?",
                          style: TextStyle(
                            fontFamily: "Raleway",
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300)),
                    ),
                    SizedBox(height: 70),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.white),
                          ),
                          color: Colors.black.withOpacity(0.9),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 60),
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontFamily: "Raleway",
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 10),
                InkWell(
                    onTap: () {},
                    child: Text("SIGN UP",
                        style: TextStyle(
                          fontFamily: "Raleway",
                            fontWeight: FontWeight.w600, color: Colors.white))),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        )),
      ]),
    );
  }
}
