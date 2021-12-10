import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

CurvedNavigationBar bottomBar(BuildContext context, int index, Function onTap) {
  return CurvedNavigationBar(
    backgroundColor: const Color(0xffff765b),
    index: index,
    onTap: onTap(index),
    items: const <Widget>[
      CircleAvatar(
        backgroundColor: Color(0xffff765b),
        child: Icon(
          Icons.lightbulb,
          size: 30,
          color: Colors.white,
        ),
      ),
      CircleAvatar(
        backgroundColor: Color(0xffff765b),
        child: Icon(
          Icons.people,
          size: 30,
          color: Colors.white,
        ),
      ),
      CircleAvatar(
        backgroundColor: Color(0xffff765b),
        child: Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
      ),
      CircleAvatar(
        backgroundColor: Color(0xffff765b),
        child: Icon(
          Icons.person,
          size: 30,
          color: Colors.white,
        ),
      ),
      CircleAvatar(
        backgroundColor: Color(0xffff765b),
        child: Icon(
          Icons.settings,
          size: 30,
          color: Colors.white,
        ),
      )
    ],
  );
}