import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constants/string/string_constants.dart';
import 'core/init/bindings/ultras_bindings.dart';
import 'core/init/lang/application_language.dart';
import 'feature/view/home/view/home_view.dart';



Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: UltrasBindings(),
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
      home:
      HomeView() 
      // MatchView(
      //   model: FixtureResponseModel(
      //     teams: FixtureTeamsModel(
      //       home: TeamDetailModel(
      //         logo: 'https://upload.wikimedia.org/wikipedia/tr/b/b6/Manchester_United_FC_logo.png'
      //       ),
      //       away: TeamDetailModel(
      //         logo: 'https://upload.wikimedia.org/wikipedia/tr/f/f6/Manchester_City.png'
      //       )
      //     ),
      //   ),
      //   backgroundColor:
      //       Colors.primaries[2 * 10 % Colors.primaries.length].shade100,
      // ),
    );
  }
}
