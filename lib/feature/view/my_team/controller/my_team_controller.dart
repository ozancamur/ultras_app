import 'package:get/get.dart';
import 'package:ultras_app/core/network/network_service.dart';
import 'package:ultras_app/feature/view/my_team/model/my_country_model.dart';
import 'package:ultras_app/feature/view/my_team/model/my_leagues_model.dart';
import 'package:ultras_app/feature/view/my_team/model/my_team_model.dart';

class MyTeamController extends GetxController {
  // ! NETWORK
  final service = NetworkService.instance;

  // ! DATA LİSTS
  List<MyCountryModel> countryList = <MyCountryModel>[].obs;
  var noImageCountryCodeList = [
    "AH",
    "BL",
    "BQ",
    "BV",
    "EU",
    "GF",
    "GP",
    "HM",
    "IC",
    "IO",
    "NY",
    "PM",
    "SJ",
    "SX",
    "UM",
    "XK",
    '',
    null
  ];
  List<MyLeagueModel> leagueList = <MyLeagueModel>[].obs;
  List<MyTeamModel> teamList = <MyTeamModel>[].obs;

  // ! UI FUNCTIONS
  var countrySelected = false.obs;
  var leagueSelected = false.obs;

  // ! UI RESULTS
  var isLoading = false.obs;

  // ! FETCH DATA FUNCTIONS

  Future<void> getAllCountries() async {
    isLoading.value = true;
    final response = await service.getAllCountries();
    for (var country in response) {
      countryList.add(
        MyCountryModel(
            name: country['name'],
            code: country['code'],
            flag: "https://flagsapi.com/${country['code']}/flat/64.png"),
      );
    }

    isLoading.value = false;
  }

  Future<void> getLeaguesOfCountry(String country) async {
    isLoading.value = true;
    final response = await service.getLeaguesOfCountry(country);
    for (var league in response) {
      leagueList.add(
        MyLeagueModel(
          id: league['league']["id"],
          name: league['league']["name"],
          type: league['league']["type"],
          logo: league['league']["logo"],
        ),
      );
    }
    isLoading.value = false;
  }

  Future<void> getTeamsOfLeague(int leagueID) async {
    isLoading.value = true;
    final response = await service.getTeamsOfLeague(leagueID);
    for (var team in response) {
      teamList.add(
        MyTeamModel(
          id: team['team']['id'],
          name: team['team']['name'],
          country: team['team']['country'],
          founded: team['team']['founded'],
          national: team['team']['national'],
          logo: team['team']['logo'],
        ),
      );
    }
    isLoading.value = false;
  }
}
