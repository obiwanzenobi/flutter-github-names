#!/usr/bin/env bash
flutter packages pub run intl_translation:generate_from_arb \
    --output-dir=lib/locale/l10n --no-use-deferred-loading \
    lib/locale/BundledAppLocalizations.dart lib/locale/l10n/intl_en.arb lib/locale/l10n/intl_pl.arb
