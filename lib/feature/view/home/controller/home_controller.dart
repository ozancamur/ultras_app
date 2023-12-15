import 'package:get/get.dart';

import '../../../../core/init/network/network_manager.dart';
import '../model/league_model.dart';
import '../service/home_service.dart';

class HomeController extends GetxController {
  //final HomeService homeService;
  //HomeService({required this.homeService});

  final homeService = HomeService();

// ! UI RESULTS
  var bodyIndex = 0.obs;
  var tabIndex = 0.obs;
  var isLoading = false.obs;

// ! DATA LIST
  var leagues = <LeagueModel>[].obs;
  var cups = <LeagueModel>[].obs;

  void changeLoading() {
    isLoading.value = !isLoading.value;
  }

  Future<void> getLeaguesRequest() async {
    changeLoading();
    await NetworkManager.instance!.dioGet<LeagueModel>('', LeagueModel());
    changeLoading();
  }

  Future<void> getLeaguesAndCups() async {
    changeLoading();
    final response = await homeService.getLeaguesAndCups();
    print('RESPONSE => $response');
    for (final league in response) {
      if (league['league']['type'] == 'League') {
        leagues.add(
          LeagueModel(
            id: league['league']['id'],
            name: league['league']['name'],
            type: league['league']['type'],
            logo: league['league']['logo'],
          ),
        );
      } else if (league['league']['type'] == 'Cup') {
        cups.add(
          LeagueModel(
            id: league['league']['id'],
            name: league['league']['name'],
            type: league['league']['type'],
            logo: league['league']['logo'],
          ),
        );
      } else {
        return;
      }
    }
    changeLoading();
  }
}
