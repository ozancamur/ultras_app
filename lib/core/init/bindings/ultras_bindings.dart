import 'package:get/get.dart';
import 'package:ultras_app/feature/view/fixture/controller/fixture_controller.dart';
import 'package:ultras_app/feature/view/match/controller/match_controller.dart';
import 'package:ultras_app/feature/view/my_team/controller/my_team_controller.dart';

import '../../../feature/view/leagues/controller/leagues_controller.dart';

class UltrasBindings implements Bindings {
  
  @override
  void dependencies() {
      Get.put(FixtureController());
      Get.put(LeaguesController());
      Get.put(MatchController());
      Get.put(MyTeamController());
  }
}