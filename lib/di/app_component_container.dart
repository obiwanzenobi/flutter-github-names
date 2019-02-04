import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_test/di/data_module.dart';
import 'package:flutter_bloc_test/di/network_module.dart';

class AppComponentContainer {
  DataModule _dataModule;
  NetworkModule _networkModule;

  AppComponentContainer() {
    _networkModule = NetworkModule();
    _dataModule = DataModule(_networkModule);
  }

  DataModule get dataModule => _dataModule;

  NetworkModule get networkModule => _networkModule;

//  static AppComponentContainer of(BuildContext context) =>
//      context.inheritFromWidgetOfExactType(AppComponentContainer);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}
