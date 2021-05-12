import 'package:app1/controllers/Loading.dart';
import 'package:app1/controllers/map.dart';
import 'package:app1/controllers/tools.dart';
import 'package:app1/pages/Loading.dart';
import 'package:app1/pages/Home.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HomePage,
      page: () => HomePage(),
    ),
    GetPage(
      name: AppRoutes.LoadingPage,
      page: () => LoadingPage(),
    )
  ];
}

class AppRoutes {
  static const String HomePage = "/";
  static const String LoadingPage = "/loading";
}

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlobalTools>(() => GlobalTools());
    Get.lazyPut<LoadingController>(() => LoadingController(), fenix: false);
    Get.lazyPut<MapController>(() => MapController(), fenix: true);
  }
}
