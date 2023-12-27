import '../../../../core/init/base/model/base_model.dart';

part 'league_model.g.dart';

class LeagueModel extends BaseModel {
  int? id;
  String? name;
  String? type;
  String? logo;

  LeagueModel({
    this.id,
    this.name,
    this.type,
    this.logo,
  });
  
  @override
  fromJson(Map<String, Object> json) {
    return _$LeagueModelFromJson(json);
  }
  
  @override
  Map<String, Object> toJson() {
    return _$LeagueModelToJson(this);
  }
}
