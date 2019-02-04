import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_test/di/app_component_container.dart';
import 'package:flutter_bloc_test/domain/users/list_bloc.dart';

class BlocBinder extends InheritedWidget {
  final AppComponentContainer _componentContainer;

  BlocBinder(this._componentContainer, {child: Widget}) : super(child: child);

  ListBloc get listBloc =>
      ListBloc(_componentContainer.dataModule.usersRepository);

  static BlocBinder of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(BlocBinder);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}
