import 'package:get/get.dart';
import '../../../../core/init/network/network_service.dart';
import '../model/league_model.dart';

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

  void changeLoading() {
    isLoading.value = !isLoading.value;
  }

  Future<void> getLeaguesAndCups() async {
    changeLoading();
    final response = await service.getLeaguesAndCups();
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
