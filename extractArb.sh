#!/usr/bin/env bash
flutter packages pub run intl_translation:extract_to_arb --output-dir=lib/locale/l10n lib/locale/BundledAppLocalizations.dart
