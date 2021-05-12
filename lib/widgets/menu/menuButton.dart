import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final IconData icon;
  MenuButton({required this.icon});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: Color(0xFF2E50E7),
      ),
      onPressed: null,
    );
  }
}
