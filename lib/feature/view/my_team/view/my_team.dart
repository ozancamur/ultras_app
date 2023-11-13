// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ultras_app/core/base/view/base_view.dart';
// import 'package:ultras_app/core/components/loading/my_team_loading.dart';
// import 'package:ultras_app/core/constants/string/string_constants.dart';
// import 'package:ultras_app/feature/view/my_team/controller/my_team_controller.dart';
// import 'package:ultras_app/feature/widgets/my_team/column/country_column.dart';
// import 'package:ultras_app/feature/widgets/my_team/listview_builder/country_listview_builder.dart';
// import 'package:ultras_app/feature/widgets/my_team/listview_builder/league_listview_builder.dart';
// import 'package:ultras_app/feature/widgets/my_team/listview_builder/team_listview_builder.dart';

// class MyTeamView extends StatelessWidget {
//   const MyTeamView({super.key});

  
//   @override
//   Widget build(BuildContext context) {
//     return BaseView<MyTeamController>(
//       controller: MyTeamController(),
//       body: buildObservableBodyField(MyTeamController()),
//     );
//   }

//   Widget buildObservableBodyField(MyTeamController controller) {
//     return Obx(
//       () => controller.isLoading.value == true
//           ? const MyTeamLoading()
//           : controller.countrySelected.value == false
//               ? buildCountryField(controller)
//               : controller.leagueSelected.value == false
//                   ? buildLeagueField(controller)
//                   : builTeamField(controller),
//     );
//   }

//   Widget buildCountryField(MyTeamController controller) {
//     controller.getAllCountries();
//     return MyTeamColumn(
//       chooseText: StringConstants.chooseCountry,
//       listViewBuilder: CountryListViewBuilder(
//         controller: controller,
//       ),
//     );
//   }

//   Widget buildLeagueField(MyTeamController controller) {
//     return MyTeamColumn(
//       chooseText: StringConstants.chooseLeague,
//       listViewBuilder: LeagueListViewBuilder(
//         controller: controller,
//       ),
//     );
//   }

//   Widget builTeamField(MyTeamController controller) {
//     return MyTeamColumn(
//       chooseText: StringConstants.chooseTeam,
//       listViewBuilder: TeamListViewBuilder(
//         controller: controller,
//       ),
//     );
//   }
// }
