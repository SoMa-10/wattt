// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';

class Condition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          disgin(context, 'حالتي', 'أنقر لإضافة حالة'),
          disgin2(),
          disgin1(context, 'Hi', 'Hello'),
          disgin1(context, 'Hi', 'How are you'),
          disgin1(context, 'Im fine ', 'What about you')
        ],
      ),
    );
  }

  Widget disgin(context, text1, text2) {
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
                child: Padding(
                  padding: EdgeInsets.only(top: 30, right: 30),
                  child: Container(
                    child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ),
                ),
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
                  Text(text2, style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 6),
              width: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget disgin1(context, text1, text2) {
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
                  Text(text2, style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget disgin2() {
    return Container(
        padding: EdgeInsets.only(right: 15),
        height: 30,
        child: Text('الحالات الحديثة', style: TextStyle(color: Colors.grey)));
  }
}
