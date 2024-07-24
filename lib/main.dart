import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/app.dart';
import 'src/providers/general_settings_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter("My_Age");
  await Hive.openBox("general_settings");

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => GeneralSettings()),
      ],
      child: const MyApp(),
    ),
  );
}
