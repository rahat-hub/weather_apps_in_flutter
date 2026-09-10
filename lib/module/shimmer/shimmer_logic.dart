import 'package:get/get.dart';

class ShimmerLogic extends GetxController {
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    Future.delayed(const Duration(seconds: 2), () {
      isLoading.value = false;
    });
  }
}

