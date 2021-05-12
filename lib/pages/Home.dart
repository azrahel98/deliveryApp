import 'package:app1/controllers/tools.dart';
import 'package:app1/widgets/menu/menuButton.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: GetBuilder<GlobalTools>(
        id: 'tabs',
        builder: (_) => SafeArea(
          top: false,
          bottom: true,
          child: Stack(
            children: [
              AnimatedSwitcher(
                  child: _.items[_.tabindex], duration: Duration(seconds: 2)),
              Align(
                alignment: Alignment.bottomCenter,
                child: CurvedNavigationBar(
                  items: [
                    MenuButton(icon: CupertinoIcons.location),
                    MenuButton(icon: Icons.crop_outlined),
                  ],
                  index: _.tabindex,
                  onTap: _.changeTab,
                  buttonBackgroundColor: Color(0xFFE4EBF8),
                  backgroundColor: Colors.transparent,
                  animationDuration: Duration(seconds: 1),
                  animationCurve: Curves.easeInOutExpo,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
