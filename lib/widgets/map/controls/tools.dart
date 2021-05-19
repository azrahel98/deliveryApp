import 'package:flutter/material.dart';

class ToolsInMap extends StatelessWidget {
  final Function() onpress;
  final IconData icon;
  ToolsInMap({required this.onpress, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: this.onpress,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(50, 50),
          padding: EdgeInsets.zero,
          alignment: Alignment.center,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Icon(
          this.icon,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
