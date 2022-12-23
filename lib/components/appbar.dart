import 'package:flutter/material.dart';
import 'package:travelappui/constants/constants.dart';

AppBar HomeAppBar = AppBar(
  backgroundColor: Color.fromARGB(179, 107, 37, 206),
  title: Center(
      child: Text(
    "Dashboard",
    style: TextStyle(
        fontWeight: FontWeight.w900,
        letterSpacing: 2,
        color: Color.fromARGB(255, 255, 255, 255)),
  )),
  leading: PopupMenuButton(
    offset: Offset.fromDirection(2, 58),
    onSelected: (value) {},
    icon: Icon(Icons.menu),
    itemBuilder: (context) {
      return kAppBarMenuOptions
          .map(
            (option) => PopupMenuItem(
              value: option,
              child: Container(
                width: 120,
                child: Text(
                  option,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          )
          .toList();
    },
  ),
  actions: [
    IconButton(
        icon: Icon(
          Icons.account_circle,
          size: 36,
        ),
        onPressed: () {})
  ],
);
