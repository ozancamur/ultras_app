import 'package:get/get.dart';
import 'package:ultras_app/core/network/network_service.dart';
import 'package:ultras_app/feature/view/home/model/league_model.dart';

class HomeController extends GetxController {
  // ! NETWORK
  final service = NetworkService.instance;

// ! UI RESULTS
  var bodyIndex = 0.obs;
  var tabIndex = 0.obs;
  var isLoading = false.obs;

// ! DATA LIST
  var leagues = <LeagueModel>[].obs;
  var cups = <LeagueModel>[].obs;

  Future<void> getLeaguesAndCups() async {
    isLoading.value = true;    
    final response = await service.getLeaguesAndCups();
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
      } else {return; }
    }
    isLoading.value = false;
  }
}
