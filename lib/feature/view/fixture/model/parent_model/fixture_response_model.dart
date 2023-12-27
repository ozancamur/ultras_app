import '../../../../../core/init/base/model/base_model.dart';
import '../child_model/fixture_league_model.dart';
import '../child_model/fixture_model.dart';
import '../child_model/goals_model.dart';
import '../child_model/score_model.dart';
import '../child_model/teams_model.dart';

class FixtureResponseModel extends BaseModel {
  final FixtureModel? fixture;
  final FixtureLeagueModel? league;
  final FixtureTeamsModel? teams;
  final FixtureGoalsModel? goals;
  final FixtureScoreModel? score;

  FixtureResponseModel(
      {this.fixture, this.league, this.teams, this.goals, this.score});

  @override
  fromJson(Map<String, Object> json) {
    throw UnimplementedError();
  }

  @override
  Map<String, Object> toJson() {
    throw UnimplementedError();
  }
}
