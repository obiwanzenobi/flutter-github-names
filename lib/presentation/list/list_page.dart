import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_test/app_config.dart';
import 'package:flutter_bloc_test/domain/users/list_state.dart';
import 'package:flutter_bloc_test/domain/users/user.dart';
import 'package:flutter_bloc_test/locale/BundledAppLocalizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/domain/users/list_bloc.dart';

class ListPage extends StatefulWidget {
  final ListBloc _listBloc;

  ListPage(this._listBloc, {Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListState(_listBloc);
}

class _ListState extends State<ListPage> with TickerProviderStateMixin {
  AnimationController controller;
  bool _loaderVisible = false;
  bool _buttonVisible = true;
  bool _listVisible = false;

  ListBloc _listBloc;

  _ListState(this._listBloc);

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  void didUpdateWidget(ListPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    AppConfig config = AppConfig.of(context);
    return Scaffold(
        appBar: AppBar(
            title: Text(localizations(context).helloWorld + config.appName)),
        body: BlocBuilder(
          bloc: _listBloc,
          builder: (BuildContext context, ListState state) {
            return Wrap(
              children: <Widget>[
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Column(
                    children:
                        state is Loading ? [button(), loader()] : [button()],
                  ),
                )
              ],
            );

//            return opacited(state);
//            if(state is Loading) {
//              return loader();
//            } else {
//              return button();
//            }
//            return AnimatedCrossFade(
//              firstChild: loader(),
//              secondChild: button(),
//              crossFadeState: state is Loading ? CrossFadeState.showFirst : CrossFadeState.showSecond,
//              duration: Duration(milliseconds: 500),
//            );

//            return AnimatedContainer(
//              constraints: BoxConstraints.tightForFinite(),
//              color: Colors.amber,
//              duration: Duration(milliseconds: 500),
//              child: Column(
//                  children:
//                      state is Loading ? [button(), loader()] : [button()]),
//            );
          },
        ));
  }

  Stack opacited(ListState state) {
    return Stack(
      children: [
        AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: state is Loading ? 1 : 0,
          child: loader(),
        ),
        AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: state is Loaded ? 1 : 0,
          child: list(state is Loaded ? state.data : BuiltList.from([])),
        ),
        AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: state is Idle ? 1 : 0,
          child: button(),
        ),
      ],
    );
  }

  Widget loader() => Center(
        child: CircularProgressIndicator(),
      );

  Widget button() => Center(
          child: RaisedButton(
        child: Text("push me"),
        onPressed: () {
          _listBloc.dispatch(ListEvent.load);
        },
      ));

  Widget list(BuiltList<User> users) => ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int position) {
        return Padding(
          padding: EdgeInsets.all(4),
          child: Container(
            color: Colors.amber,
            child: Padding(
                padding: EdgeInsets.all(4), child: Text(users[position].name)),
          ),
        );
      });
}
