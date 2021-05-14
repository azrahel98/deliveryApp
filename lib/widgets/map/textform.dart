import 'package:app1/widgets/map/control/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldCustom extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextInputType typeText;
  final int maxle;
  final String id;
  final TextEditingController editc;

  TextFieldCustom({
    required this.hintText,
    required this.icon,
    required this.typeText,
    required this.maxle,
    required this.id,
    required this.editc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFE9EBEE),
        ),
        child: GetBuilder<FormController>(
          id: this.id,
          builder: (_) => TextFormField(
            controller: this.editc,
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
      ),
    );
  }
}
