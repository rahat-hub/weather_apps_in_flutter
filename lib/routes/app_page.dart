import 'package:get/get.dart';
import 'package:weather_apps_in_flutter/routes/app_routes.dart';

import '../module/shimmer/shimmer_binding.dart';
import '../module/shimmer/shimmer_view.dart';

class AppPage {
  static final initial = AppRoutes.shimmer;
  static  final routes =[
    GetPage(name: AppRoutes.shimmer, page: () => ShimmerPage(),bindings:[ShimmerBinding()]),
  ];
}