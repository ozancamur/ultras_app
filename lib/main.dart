import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constants/string/string_constants.dart';
import 'core/init/bindings/ultras_bindings.dart';
import 'core/init/lang/application_language.dart';
import 'feature/view/leagues/view/leagues_view.dart';



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
      LeaguesView() 
      
    );
  }
}
