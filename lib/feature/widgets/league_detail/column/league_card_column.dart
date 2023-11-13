import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';
import 'package:ultras_app/core/components/button/atomic_elevated_button.dart';
import 'package:ultras_app/core/components/card/atomic_card.dart';
import 'package:ultras_app/core/components/column/column_field.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';

class LeagueCardColumn extends StatelessWidget {
  const LeagueCardColumn({super.key,required this.logo ,required this.name, required this.color});

  final String logo;
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Get.width * .015),
      child: AtomicCard(
        margin: EdgeInsets.zero,
        elevation: 10,
        elevationColor: Colors.white,
        child: AtomicElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: color,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.zero,
          ),
          child: AtomicColumn(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: Get.height * .075,
                  width: Get.width * .15,
                  padding: Get.context!.padding.low,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.network(logo),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  name.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorConstants.black,
                    fontFamily: 'AJ Paglia',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
