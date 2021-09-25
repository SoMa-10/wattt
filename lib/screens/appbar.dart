// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wat/main.dart';

class AppBarr {
  AppBar appBar() {
    return AppBar(
      title: Text('واتساب'),
      bottom: TabBar(
        controller: MyHomePageState.tabController,
        tabs: [
          Tab(icon: Icon(Icons.camera_alt)),
          Tab(
            text: 'الدردشات',
          ),
          Tab(
            text: 'الحالة',
          ),
          Tab(
            text: 'المكالمات',
          ),
        ],
      ),
    );
  }
}
