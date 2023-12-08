import 'package:flutter/material.dart';

import 'application_theme.dart';

class ThemeManager extends ApplicationTheme {

  static ThemeManager? _instance;
  static ThemeManager? get instance {
    _instance ??= ThemeManager._init();
    return _instance;
  } 

  ThemeManager._init();

  @override
  ThemeData get theme => ThemeData.light();


}