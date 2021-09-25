// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_print, unnecessary_string_escapes

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:wat/screens/calls.dart';

// ignore: use_key_in_widget_constructors
class Chat extends StatefulWidget {
  @override
  ChatState createState() => ChatState();
}

class ChatState extends State<Chat> {
  List<Contact> names = [];

  @override
  void initState() {
    super.initState();
    gitAll();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: names.length,
            itemBuilder: (context, index) {
              Contact namess = names[index];
              return ListView(
                children: [disgin(context, namess.displayName)],
              );
            }),
      ),
    );
  }

  Widget disgin(BuildContext context, String? namess) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 75,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [imge(context), text(namess), timeAndMassge(context)],
        ),
      ),
    );
  }

  imge(BuildContext context) {
    String src = "lib\images\keyboard.jpg";
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                actions: [
                  Container(
                    width: 85,
                    height: 270,
                    child: Image.asset(src),
                  )
                ],
              );
            });
      },
      child: CircleAvatar(
        child: Icon(Icons.person),
        radius: 25,
      ),
    );
  }

  text(String? namess) {
    return Container(
      width: 240,
      padding: EdgeInsets.only(
        right: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(namess.toString(),
              style: TextStyle(
                fontSize: 17,
              )),
          Text('Future Programmers :)', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  timeAndMassge(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 6),
      width: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            Calls.now,
            style: TextStyle(fontSize: 10),
          ),
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            child: Text(
              '1',
              style: TextStyle(fontSize: 10),
            ),
            radius: 11,
          )
        ],
      ),
    );
  }

  gitAll() async {
    List<Contact> contacts =
        (await ContactsService.getContacts(withThumbnails: false)).toList();
    setState(() {
      names = contacts;
    });
  }
}
