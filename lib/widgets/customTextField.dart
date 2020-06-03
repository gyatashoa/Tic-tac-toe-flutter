import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(this.hintText,{@required this.icon,this.isPassword = false});
  bool isPassword;
  IconData icon;
  String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        obscureText: isPassword,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: "Raleway"
            ),
            border: InputBorder.none,
            prefixIcon: Icon(
              icon,
              color: Colors.black,
              size: 20,
            )),
      ),
    );
  }
}
