import '../grand_child_model/score/score_child_model.dart';

class ScoreModel {
  final ScoreChildModel halftime;
  final ScoreChildModel fulltime;
  final ScoreChildModel extratime;
  final ScoreChildModel penalty;

  ScoreModel({
    required this.halftime,
    required this.fulltime,
    required this.extratime,
    required this.penalty,
  });
}
