import 'package:flutter/material.dart';

import '../src/app.dart';
import 'generated/app_localizations.dart';

final context = navigatorKey.currentContext!;

class L10n {
  static final all = [const Locale("en"), const Locale("ar")];
}

class Strings {
  static BuildContext get _context => navigatorKey.currentState!.context;

  static AppLocalizations of(BuildContext context) {
    return AppLocalizations.of(context)!;
  }

  /// ## Use it only for translation outside the UI widgets like:
  /// * APIs errors
  /// * General Functions, etc...
  /// ### It is useful because the `context` is not required.
  static AppLocalizations get get {
    return AppLocalizations.of(_context)!;
  }
}
