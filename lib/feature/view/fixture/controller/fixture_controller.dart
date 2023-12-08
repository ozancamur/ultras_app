import 'package:get/get.dart';
import '../../../../core/init/network/network_service.dart';
import '../model/parent_model/fixture_response_model.dart';

class FixtureController extends GetxController {
  // ! NETWORK
  final service = NetworkService.instance;

// ! UI RESULTS
  var isLoading = false.obs;

// ! DATA LIST
  List<FixtureResponseModel> fixtureList = <FixtureResponseModel>[].obs;

  Future<void> getFixture(int id) async {
    isLoading.value = true;
    final response = await service.getFixture(id);
    for (final fixture in response) {
      print("object ${response}");
      fixtureList.add(
        FixtureResponseModel(
          fixture: fixture['fixture'],
          league: fixture['league'],
          teams: fixture['teams'],
          goals: fixture['goals'],
          score: fixture['score'],
        ),
      );
    }
    isLoading.value = false;
  }
}
