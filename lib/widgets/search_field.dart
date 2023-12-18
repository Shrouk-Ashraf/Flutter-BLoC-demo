import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField(
      {required this.controller, required this.onChanged, super.key});

  final TextEditingController controller;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: const Color(0xff343a40),
      decoration: const InputDecoration(
        hintText: 'Find a character....',
        hintStyle: TextStyle(color: Color(0xff343a40), fontSize: 18),
        // border: InputBorder.none,
      ),
      style: const TextStyle(color: Color(0xff343a40), fontSize: 18),
      onChanged: onChanged,
    );
  }
}
