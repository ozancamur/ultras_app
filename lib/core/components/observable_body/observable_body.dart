import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/components/loading/ultras_loading.dart';

class ObservableBody extends StatelessWidget {
  const ObservableBody({super.key,required this.isLoading ,required this.body});

  final RxBool isLoading;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Obx(() => isLoading.value == true ? const UltrasLoading() : body);
  }
}