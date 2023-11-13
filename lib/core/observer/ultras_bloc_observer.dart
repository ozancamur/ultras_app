import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class UltrasBlocObserver extends BlocObserver {
  @override
  
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    debugPrint('$error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    debugPrint('$transition');
  }
}
