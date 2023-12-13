import 'package:get/get.dart';
import 'package:ultras_app/feature/view/fixture/service/fixture_service.dart';
import '../model/child_model/fixture_league_model.dart';
import '../model/child_model/fixture_model.dart';
import '../model/child_model/goals_model.dart';
import '../model/child_model/score_model.dart';
import '../model/child_model/teams_model.dart';
import '../model/grand_child_model/periods_model.dart';
import '../model/grand_child_model/status_model.dart';
import '../model/grand_child_model/score_child_model.dart';
import '../model/grand_child_model/team_detail_model.dart';
import '../model/grand_child_model/venue_model.dart';
import '../model/parent_model/fixture_response_model.dart';

class FixtureController extends GetxController {
  
  //final FixtureService fixtureService;
  //FixtureController({required this.fixtureService});

  final fixtureService = FixtureService();

// ! UI RESULTS
  var isLoading = false.obs;

// ! DATA LIST
  List<FixtureResponseModel> fixtureList = <FixtureResponseModel>[].obs;

  Future<void> getFixture(int id) async {
    isLoading.value = true;
    final response = await fixtureService.getFixture(id);
    for (final fixture in response) {
      fixtureList.add(
        FixtureResponseModel(
          fixture: FixtureModel(
            id: fixture['fixture']['id'],
            referee: fixture['fixture']['referee'],
            timezone: fixture['fixture']['timezone'],
            date: fixture['fixture']['date'],
            timestamp: fixture['fixture']['timestamp'],
            periods: PeriodsModel(
              first: fixture['fixture']['periods']['first'],
              second: fixture['fixture']['periods']['second'],
            ),
            venue: VenueModel(
              id: fixture['fixture']['venue']['id'],
              name: fixture['fixture']['venue']['name'],
              city: fixture['fixture']['venue']['city'],
            ),
            status: StatusModel(
              long: fixture['fixture']['status']['long'],
              short: fixture['fixture']['status']['short'],
              elapsed: fixture['fixture']['status']['elapsed'],
            ),
          ),
          league: FixtureLeagueModel(
            id: fixture['league']['id'],
            name: fixture['league']['name'],
            country: fixture['league']['country'],
            logo: fixture['league']['logo'],
            flag: fixture['league']['flag'],
            season: fixture['league']['season'],
            round: fixture['league']['round'],
          ),
          teams: FixtureTeamsModel(
            home: TeamDetailModel(
              id: fixture['teams']['home']['id'],
              name: fixture['teams']['home']['name'],
              logo: fixture['teams']['home']['logo'],
            ),
            away: TeamDetailModel(
              id: fixture['teams']['away']['id'],
              name: fixture['teams']['away']['name'],
              logo: fixture['teams']['away']['logo'],
            ),
          ),
          goals: FixtureGoalsModel(
            home: fixture['goals']['home'],
            away: fixture['goals']['away'],
          ),
          score: FixtureScoreModel(
            halftime: ScoreChildModel(
              home: fixture['score']['halftime']['home'],
              away: fixture['score']['halftime']['away'],
            ),
            fulltime: ScoreChildModel(
              home: fixture['score']['fulltime']['home'],
              away: fixture['score']['fulltime']['away'],
            ),
            extratime: ScoreChildModel(
              home: fixture['score']['extratime']['home'],
              away: fixture['score']['extratime']['away'],
            ),
            penalty: ScoreChildModel(
              home: fixture['score']['penalty']['home'],
              away: fixture['score']['penalty']['away'],
            ),
          ),
        ),
      );
    }
    isLoading.value = false;
  }
}
