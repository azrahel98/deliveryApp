import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextInputType typeText;
  final int maxle;
  TextFieldCustom(
      {required this.hintText,
      required this.icon,
      required this.typeText,
      required this.maxle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFE9EBEE),
        ),
        child: TextFormField(
          keyboardType: this.typeText,
          minLines: 1,
          maxLines: 3,
          maxLength: this.maxle,
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
              letterSpacing: 1,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            counterText: "",
            border: InputBorder.none,
            hintText: this.hintText,
            hintStyle: TextStyle(fontSize: 13),
            contentPadding: EdgeInsets.only(top: 14.0, bottom: 10),
            prefixIcon: Icon(
              this.icon,
              color: Color(0xFF2884FF),
              size: MediaQuery.of(context).size.height / 55,
            ),
          ),
        ),
      ),
    );
  }
}
