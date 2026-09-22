
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_size.dart';
import '../search_location_logic.dart';

class SuggestionLocationView extends GetView<SearchLocationLogic> {
  const SuggestionLocationView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: WSizes.spaceBtwItems,
        children: List.generate(controller.locationsSuggestions.length, (index) {
          return ActionChip(
            label: Text(controller.locationsSuggestions[index], style: Theme.of(context).textTheme.titleSmall),
            backgroundColor: Get.isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(WSizes.borderRadiusLg), side: BorderSide.none),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            onPressed: () {},
          );
        }),
      ),
    );
  }
}