import 'package:get/get.dart';
import 'package:rive/rive.dart';

class RiveController extends GetxController {
 
  late RiveAnimationController homeController;
  late RiveAnimationController searchController;
  late RiveAnimationController settingsController;

  void startAnimation(RiveAnimationController controller) {
    controller.isActive = true;
    Future.delayed(const Duration(seconds: 2), () => controller.isActive = false);
  }

  void homeAnimation() {
        homeController.isActive = true;
        Future.delayed(const Duration(seconds: 2), () => homeController.isActive = false);
  }

   void searchAnimation() {
        searchController.isActive = true;
        Future.delayed(const Duration(seconds: 2), () => searchController.isActive = false);
  }

   void settingsAnimation() {
        settingsController.isActive = true;
        Future.delayed(const Duration(seconds: 2), () => settingsController.isActive = false);
  }


}
