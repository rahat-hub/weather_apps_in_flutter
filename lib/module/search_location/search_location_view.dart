import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:weather_apps_in_flutter/module/search_location/search_location_screen/search_location_mobile.dart';
import 'package:weather_apps_in_flutter/module/search_location/search_location_screen/search_location_tablet.dart';

import '../../utils/keyboard.dart';
import 'search_location_logic.dart';

class SearchLocationPage extends StatelessWidget {
  const SearchLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SearchLocationLogic>();

    return GestureDetector(
      onTap: () => Keyboard.close(context: context),
      child: ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) => ScreenTypeLayout.builder(
          mobile: (BuildContext context) =>
              OrientationLayoutBuilder(portrait: (BuildContext context) => SearchLocationMobile(), landscape: (BuildContext context) => SearchLocationMobile()),
          tablet: (BuildContext context) =>
              OrientationLayoutBuilder(portrait: (BuildContext context) => SearchLocationTablet(), landscape: (BuildContext context) => SearchLocationTablet()),
        ),
      ),
    );
  }

}
