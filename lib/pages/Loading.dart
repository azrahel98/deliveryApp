import 'package:app1/controllers/Loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GetBuilder<LoadingController>(
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: size.height / 12,
                child: Center(child: CircularProgressIndicator()),
              ),
              Center(
                child: IconButton(
                  icon: Icon(
                    Icons.settings_applications,
                  ),
                  onPressed: () => openAppSettings(),
                ),
              ),
              Center(
                child: Text("DAR PERMISOS"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
