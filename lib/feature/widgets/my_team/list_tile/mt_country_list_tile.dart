import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';
import '../../../../core/components/list_tile/atomic_list_tile.dart';
import '../../../../core/constants/image/image_enum.dart';
import '../../../../core/constants/style/text/text_style_constants.dart';
import '../../../view/my_team/model/my_country_model.dart';

class CountryListTile extends StatelessWidget {
  const CountryListTile({
    required this.noImageList,
    required this.country,
    required this.countryPressed,
    super.key,
  });

  final List noImageList;
  final MyCountryModel country;
  final Function() countryPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.verticalLow,
      child: SizedBox(
        height: Get.height * .05,
        width: Get.width,
        child: AtomicListTile(
          leading: noImageList.contains(country.code)
              ? Image.asset(ImageEnum.noImage.toPng)
              : Image.network(country.flag),
          title: Text(
            country.name,
            style: TextStyleConstants.listTileTitleTextStyle,
          ),
          subtitle: Text(
            country.code == null ? '--' : country.code!,
            style: TextStyleConstants.listTileSubTitleTextStyle,
          ),
          trailing: IconButton(
            onPressed: countryPressed,
            icon: const Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ),
      ),
    );
  }
}
