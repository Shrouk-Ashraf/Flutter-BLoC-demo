import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/services/get_characters_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String id = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: GestureDetector(
        onTap: () {},
        child: Text('hhhhh'),
      ),
    );
  }
}
