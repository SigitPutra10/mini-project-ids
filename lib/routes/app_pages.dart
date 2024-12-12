import 'package:get/get.dart';
import 'package:mini_project/core.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Paths.LIST_PICTURES,
      page: () => ListPictureView(),
      binding: PictureBinding(),
    ),
    GetPage(
      name: Paths.DETAIL_PICTURES,
      page: () => DetailPictureView(),
      binding: PictureBinding(),
    ),
  ];
}
