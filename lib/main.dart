import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/constants/string/string_constants.dart';
import 'package:ultras_app/feature/view/fixture/model/child_model/teams_model.dart';
import 'package:ultras_app/feature/view/fixture/model/grand_child_model/team_detail_model.dart';
import 'package:ultras_app/feature/view/fixture/model/parent_model/fixture_response_model.dart';
import 'package:ultras_app/feature/view/match/view/match_view.dart';
import 'core/init/lang/application_language.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translationsKeys: ApplicationLanguage.translationKey,
      locale: const Locale('en', 'US'),
      fallbackLocale: Get.deviceLocale,
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      title: 'ULTRAS APPLICATION',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: StringConstants.AJ_PAGLIA_FONT_STYLE,
      ),
      home: MatchView(
        model: FixtureResponseModel(
          teams: FixtureTeamsModel(
            home: TeamDetailModel(
              logo: 'https://upload.wikimedia.org/wikipedia/tr/b/b6/Manchester_United_FC_logo.png'
            ),
            away: TeamDetailModel(
              logo: 'https://upload.wikimedia.org/wikipedia/tr/f/f6/Manchester_City.png'
            )
          ),
        ),
        backgroundColor:
            Colors.primaries[2 * 10 % Colors.primaries.length].shade100,
      ),
    );
  }
}
