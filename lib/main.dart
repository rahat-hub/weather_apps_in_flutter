import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_apps_in_flutter/routes/app_page.dart';

void main()  {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'weather App',
      initialRoute: AppPage.initial,
      getPages: AppPage.routes,
    );
  }
}



