// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, unnecessary_string_interpolations, avoid_print

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Calls extends StatelessWidget {
  static var now = DateFormat.jm().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          disgin(context, 'محمد', now),
          disgin(context, 'عبد الله', now),
          disgin(context, 'بكر', now),
          disgin(context, 'يوسف', now),
          disgin(context, 'فؤاد', now),
        ],
      ),
    );
  }

  Widget disgin(BuildContext context, String text1, String text2) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 75,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              child: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
            Container(
              width: 240,
              padding: EdgeInsets.only(
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text1,
                      style: TextStyle(
                        fontSize: 17,
                      )),
                  Text('$text2', style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 6),
              width: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
