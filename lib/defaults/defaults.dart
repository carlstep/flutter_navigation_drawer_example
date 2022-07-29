import 'package:flutter/material.dart';

class Defaults {
  static const Color drawerItemColor = Colors.blueGrey;
  static const Color drawerItemSelectedColor =
      Color.fromARGB(255, 25, 118, 210);
  static const Color drawerSelectedTileColor = Color.fromARGB(94, 89, 155, 212);

  static final drawerItemText = [
    'Inbox',
    'Starred',
    'Sent',
    'Drafts',
    'Trash',
    'Spam',
  ];

  static final drawerItemIcon = [
    Icons.inbox,
    Icons.star,
    Icons.send,
    Icons.mail,
    Icons.delete,
    Icons.warning_rounded,
  ];
}
