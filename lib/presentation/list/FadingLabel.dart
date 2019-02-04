//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//
//class FadingLabel extends StatefulWidget {
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return null;
//  }
//}
//
//class _FadingState extends State<FadingLabel> with TickerProviderStateMixin {
//
//  AnimationController controller;
//  bool _visible = true;
//
//  @override
//  void initState() {
//    super.initState();
//    controller =
//        AnimationController(vsync: this, duration: Duration(seconds: 2));
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return AnimatedOpacity(
//      opacity: _visible ? 1.0 : 0.0,
//      duration: Duration(milliseconds: 1500),
//      // The green box needs to be the child of the AnimatedOpacity
//      child: Text(
//
//      ),
//    );
//  }
//
//}
