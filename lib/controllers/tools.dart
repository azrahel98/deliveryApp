import 'package:app1/pages/Hmap.dart';
import 'package:app1/pages/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GlobalTools extends GetxController {
  var tabindex = 0;
  List<Widget> items = <Widget>[
    MapPage(),
    Gomepage(),
  ];

  void changeTab(int index) {
    tabindex = index;
    update(['tabs']);
  }

  @override
  void onInit() {
    print("object dashboard");
    super.onInit();
  }

  @override
  void onClose() {
    print("object CERRANDO");
    super.onClose();
  }
}
