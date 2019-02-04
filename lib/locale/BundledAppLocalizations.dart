import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_test/locale/l10n/messages_all.dart';
import 'package:intl/intl.dart';

class BundledAppLocalizations {

  static Future<BundledAppLocalizations> load(Locale locale) {
    final String name = _isCountryCodeEmpty(locale) ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return BundledAppLocalizations();
    });
  }

  static bool _isCountryCodeEmpty(Locale locale) =>
      locale.countryCode == null || locale.countryCode.isEmpty;

  static BundledAppLocalizations of(BuildContext context) {
    return Localizations.of<BundledAppLocalizations>(context, BundledAppLocalizations);
  }

  String get helloWorld {
    return Intl.message(
      'Hello world',
      name: "helloWorld",
    );
  }

  String get homeButton {
    return Intl.message(
      'Home button',
      name: "homeButton",
    );
  }
}

BundledAppLocalizations localizations(BuildContext context) {
  return BundledAppLocalizations.of(context);
}

class BundledAppLocalizationsDelegate
    extends LocalizationsDelegate<BundledAppLocalizations> {
  const BundledAppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'pl'].contains(locale.languageCode);
  }

  @override
  Future<BundledAppLocalizations> load(Locale locale) {
    return BundledAppLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<BundledAppLocalizations> old) {
    return false;
  }
}
