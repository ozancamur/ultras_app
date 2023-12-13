import 'package:ultras_app/feature/view/fixture/model/child_model/fixture_league_model.dart';
import 'package:ultras_app/feature/view/fixture/model/child_model/fixture_model.dart';
import 'package:ultras_app/feature/view/fixture/model/child_model/goals_model.dart';
import 'package:ultras_app/feature/view/fixture/model/child_model/score_model.dart';
import 'package:ultras_app/feature/view/fixture/model/child_model/teams_model.dart';

class FixtureResponseModel {
  // Map<String, dynamic> fixture = {
  //   'id': 0,
  //   'referee': '',
  //   'timezone': '',
  //   'date': '',
  //   'timestamp': 0,
  //   'periods': {'first': 0, 'second': 0},
  //   'venue': {'id': 0, 'name': '', 'city': ''},
  //   'status': {'long': '', 'short': '', 'elapsed': 0},
  // };
  // Map<String, dynamic> league = {
  //   'id': 0,
  //   'name': '',
  //   'country': '',
  //   'logo': '',
  //   'flag': '',
  //   'season': 0,
  //   'round': ''
  // };
  // Map<String, dynamic> teams = {
  //   'home': {'id': 0, 'name': '', 'logo': '', 'winner': false},
  //   'away': {'id': 0, 'name': '', 'logo': '', 'winner': false}
  // };
  // Map<String, dynamic> goals = {
  //   'home': 0,
  //   'away': 0,
  // };
  // Map<String, dynamic> score = {
  //   'halftime': {'home': 0, 'away': 0},
  //   'fulltime': {'home': 0, 'away': 0},
  //   'extratime': {'home': 0, 'away': 0},
  //   'penaltı': {'home': 0, 'away': 0},
  // };

  final FixtureModel fixture;
  final FixtureLeagueModel league;
  final FixtureTeamsModel teams;
  final FixtureGoalsModel goals;
  final FixtureScoreModel score;

  FixtureResponseModel(
      {required this.fixture,
      required this.league,
      required this.teams,
      required this.goals,
      required this.score});
}
