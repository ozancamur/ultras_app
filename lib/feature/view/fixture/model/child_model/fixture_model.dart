
import '../grand_child_model/periods_model.dart';
import '../grand_child_model/status_model.dart';
import '../grand_child_model/venue_model.dart';

class FixtureModel {
  int? id;
  String? referee;
  String? timezone;
  String? date;
  int? timestamp;
  PeriodsModel? periods;
  VenueModel? venue;
  StatusModel? status;

  FixtureModel({
    this.id,
    this.referee,
    this.timezone,
    this.date,
    this.timestamp,
    this.periods,
    this.venue,
    this.status,
  });
}