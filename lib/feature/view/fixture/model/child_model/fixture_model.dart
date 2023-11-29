import 'package:ultras_app/feature/view/fixture/model/grand_child_model/fixture/periods_model.dart';
import 'package:ultras_app/feature/view/fixture/model/grand_child_model/fixture/status_model.dart';
import 'package:ultras_app/feature/view/fixture/model/grand_child_model/fixture/venue_model.dart';

class FixtureModel {
  int id;
  String referee;
  String timezone;
  String date;
  int timestamp;
  PeriodsModel periods;
  VenueModel venue;
  StatusModel status;

  FixtureModel({
    required this.id,
    required this.referee,
    required this.timezone,
    required this.date,
    required this.timestamp,
    required this.periods,
    required this.venue,
    required this.status,
  });
}