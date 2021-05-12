import 'package:app1/routes/app.dart';
import 'package:app1/themes/daytheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black));
    return GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: false,
      title: 'MyFristAPp',
      theme: DayTheme.themeData,
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.LoadingPage,
      getPages: AppPages.list,
      initialBinding: AppBindings(),
    );
  }
}
