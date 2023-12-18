import 'package:flutter/material.dart';

AppBar RegularAppBar({required void Function()? onPressed}) {
  return AppBar(
    backgroundColor: const Color(0xffffc107),
    title: const Text(
      'Characters',
      style: TextStyle(color: Color(0xff343A40)),
    ),
    actions: [
      IconButton(
        onPressed: onPressed,
        icon: const Icon(Icons.search),
      ),
    ],
  );
}
