import 'package:flutter/material.dart';

class BuildDivider extends StatelessWidget {
  const BuildDivider({super.key, required this.endIndent});

  final double endIndent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: const Color(0xffffc107),
      height: 30,
      endIndent: endIndent,
      thickness: 2,
    );
  }
}
