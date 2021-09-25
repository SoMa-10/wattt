// ignore_for_file: use_key_in_widget_constructors, avoid_print, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:wat/modle/theme.dart';
import 'package:wat/screens/appbar.dart';
import 'package:wat/screens/calls.dart';
import 'package:wat/screens/camera.dart';
import 'package:wat/screens/chat.dart';
import 'package:wat/screens/condition.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemState().them(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  static var tabController;
  TextDirection textDirectionn = TextDirection.rtl;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var ch = [Cam(), Chat(), Condition(), Calls()];
    return Directionality(
      textDirection: textDirectionn,
      child: Scaffold(
        appBar: AppBarr().appBar(),
        body: TabBarView(
          controller: tabController,
          children: ch,
        ),
        floatingActionButton: floatingActionButton(),
      ),
    );
  }

  floatingActionButton() {
    if (tabController.index == 0) {
      return null;
    }

    if (tabController.index == 1) {
      return FloatingActionButton(
        child: Icon(Icons.message_rounded),
        onPressed: () {},
      );
    }

    if (tabController.index == 2) {
      return FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () {},
      );
    }

    if (tabController.index == 3) {
      return FloatingActionButton(
        child: Icon(Icons.add_ic_call_rounded),
        onPressed: () {},
      );
    }
  }
}
