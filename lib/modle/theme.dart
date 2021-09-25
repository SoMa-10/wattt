// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Them extends StatefulWidget {
  @override
  ThemState createState() => ThemState();
}

class ThemState extends State<Them> {
  var lite = '4:49 AM';
  var dark = '6:34 PM';
  var noww = DateFormat.jm().format(DateTime.now());
  var nn = '10:18 AM';
  ThemeData themeData = ThemeData.light();
  ThemeData themeData1 = ThemeData.dark();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }

  them() {
    if (noww == nn) {
      return themeData1;
    }

    if (noww == dark) {
      return themeData1;
    }
  }
}
