import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/feature/view/home/view/home_view.dart';

import 'core/init/lang/application_language.dart';
import 'feature/view/fixture/view/fixture_view.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translationsKeys: ApplicationLanguage.translationKey,
      locale: const Locale('tr','TR'),
      fallbackLocale: Get.deviceLocale,
      navigatorKey: Get.key,
      navigatorObservers: [GetObserver()],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'AJ Paglia',
      ),
      home: HomeView()
    );
  }
}
