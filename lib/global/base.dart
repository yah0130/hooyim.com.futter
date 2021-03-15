import 'dart:ui';

abstract class GlobalBaseState {
  Color get themeColor;

  set themeColor(Color color);

  Locale get localization;

  set localization(Locale locale);
}
