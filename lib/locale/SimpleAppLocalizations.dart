import 'dart:ui';

import 'package:flutter/widgets.dart';

class SimpleAppLocalizations {
  final Locale locale;

  SimpleAppLocalizations(this.locale);

  static SimpleAppLocalizations of(BuildContext context) {
    return Localizations.of<SimpleAppLocalizations>(context, SimpleAppLocalizations);
  }


}
