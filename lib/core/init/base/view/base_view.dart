// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/components/loading/ultras_loading.dart';
import 'package:ultras_app/core/init/base/state/base_state.dart';

@immutable
class BaseView<T extends GetxController> extends BaseStatelessWidget {
  RxBool isLoading;
  final T viewmodel;
  final Function(T viewmodel) onControllerReady;
  final Future<void> Function() pageFunctions;
  final Widget Function(BuildContext context, GetxController viewmodel)
      onPageBuilder;

  BaseView({
    super.key,
    required this.isLoading,
    required this.viewmodel,
    required this.onControllerReady,
    required this.pageFunctions,
    required this.onPageBuilder,
  });

  final refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: viewmodel,
      initState: (state) {
        Get.put(viewmodel);
        onControllerReady(viewmodel);
        pageFunctions();
      },
      builder: (viewmodel) {
        return Obx(
          () => isLoading.value == true
              ? const UltrasLoading()
              : RefreshIndicator(
                  key: refreshKey,
                  onRefresh: pageFunctions,
                  child: onPageBuilder(context, viewmodel),
                ),
        );
      },
    );
  }
}
