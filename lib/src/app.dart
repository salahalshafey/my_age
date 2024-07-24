import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'pages/home_screen.dart';
import 'providers/general_settings_provider.dart';
import 'theme.dart';

late GlobalKey<NavigatorState> navigatorKey;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    navigatorKey = _navigatorKey;

    final provider = Provider.of<GeneralSettings>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      title: 'My Age',
      theme: MyTheme.light(provider.currentColor),
      darkTheme: MyTheme.dark(provider.currentColor),
      themeMode: provider.themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: provider.currentLocal,
      home: const HomeScreen(),
    );
  }
}
