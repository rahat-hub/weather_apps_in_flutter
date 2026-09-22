import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_size.dart';
import '../../../utils/style/style_padding.dart';
import '../../home/widgets/home_search_location_view.dart';
import '../search_location_logic.dart';
import '../widgets/suggestion_location_view.dart';

class SearchLocationTablet extends GetView<SearchLocationLogic> {
  const SearchLocationTablet({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: SafeArea(
        child: Padding(
          padding: StylePadding.screenPaddingMobile,
          child: Column(
            spacing: WSizes.spaceBtwSections - 5,
            children: [
              const HomeSearchLocationView(),
              const SuggestionLocationView(),
            ]
          ),
        ),
      ),
    );
}