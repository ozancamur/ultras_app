import 'package:ultras_app/feature/view/fixture/model/child_model/fixture_league_model.dart';
import 'package:ultras_app/feature/view/fixture/model/child_model/fixture_model.dart';
import 'package:ultras_app/feature/view/fixture/model/child_model/goals_model.dart';
import 'package:ultras_app/feature/view/fixture/model/child_model/score_model.dart';
import 'package:ultras_app/feature/view/fixture/model/child_model/teams_model.dart';

class FixtureResponseModel {

  final FixtureModel? fixture;
  final FixtureLeagueModel? league;
  final FixtureTeamsModel? teams;
  final FixtureGoalsModel? goals;
  final FixtureScoreModel? score;

  FixtureResponseModel(
      {this.fixture, this.league, this.teams, this.goals, this.score});
}
