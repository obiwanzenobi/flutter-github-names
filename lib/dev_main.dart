import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_test/app_config.dart';
import 'package:flutter_bloc_test/di/app_component_container.dart';
import 'package:flutter_bloc_test/di/bloc_binder.dart';
import 'package:flutter_bloc_test/my_app.dart';

void main() {
  AppComponentContainer componentContainer = AppComponentContainer();
  runApp(AppConfig(
    appName: "Dev",
    child: BlocBinder(
      componentContainer,
      child: MyApp(),
    ),
  ));
}
