import 'package:flutter/widgets.dart';

class AppConfig extends InheritedWidget {
  final String appName;

  AppConfig({this.appName, child: Widget}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return this != oldWidget;
  }

  static AppConfig of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(AppConfig);
  }
}
