import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/apps_color.dart';
import 'shimmer_logic.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPage extends GetView<ShimmerLogic> {
  const ShimmerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppsColor.maincolor,
      body: SafeArea(
        child: Obx(() {
          if (controller.isLoading.value) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
              child: SingleChildScrollView(
                child: Shimmer.fromColors(
                  baseColor: AppsColor.baseColorS!,
                  highlightColor: AppsColor.highlightColor!,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      Container(
                        width: 100,
                        height: 100,
                        color: AppsColor.maincolor,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 6,
                            decoration: BoxDecoration(
                              color: AppsColor.maincolor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 40,
                            height: 6,
                            decoration: BoxDecoration(
                              color: AppsColor.maincolor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: Text(
                          '25',
                          style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            color: AppsColor.Secomdmain,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: AppsColor.maincolor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          color: AppsColor.maincolor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: AppsColor.maincolor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return _buildNextPageContent();
          }
        }),
      ),
    );
  }


  Widget _buildNextPageContent() {
    return const Center(
      child: Text(
        'Welcome to Next Page!',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}
