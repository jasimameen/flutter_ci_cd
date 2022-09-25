import 'package:ci_cd_sample/app_widget.dart';
import 'package:ci_cd_sample/config_reader.dart';
import 'package:ci_cd_sample/enviroment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primary = Colors.pink;
  switch (env) {
    case Enviroment.dev:
      primary = Colors.green;
      break;
    case Enviroment.prod:
      primary = Colors.red;
      break;
  }

  runApp(
    Provider.value(
      value: primary,
      child: const MyApp(),
    ),
  );
}
