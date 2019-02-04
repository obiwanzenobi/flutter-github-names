import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_test/di/app_component_container.dart';
import 'package:flutter_bloc_test/di/bloc_binder.dart';
import 'package:flutter_bloc_test/locale/BundledAppLocalizations.dart';
import 'package:flutter_bloc_test/presentation/list/list_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        BundledAppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [const Locale("en"), const Locale("pl")],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListPage(BlocBinder.of(context).listBloc),
    );
  }
}
