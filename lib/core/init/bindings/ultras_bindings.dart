import 'package:get/get.dart';
import 'package:ultras_app/feature/view/fixture/controller/fixture_controller.dart';
import 'package:ultras_app/feature/view/home/controller/home_controller.dart';
import 'package:ultras_app/feature/view/match/controller/match_controller.dart';
import 'package:ultras_app/feature/view/my_team/controller/my_team_controller.dart';

class UltrasBindings implements Bindings {
  
  @override
  void dependencies() {
      Get.put(FixtureController());
      Get.put(HomeController());
      Get.put(MatchController());
      Get.put(MyTeamController());
      
  }

}