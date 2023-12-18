import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/widgets/search_field.dart';

AppBar searchAppBar({
  required void Function()? backOnPressed,
  required void Function()? closeOnPressed,
  required void Function(String)? onChanged,
  required TextEditingController controller,
}) {
  return AppBar(
    backgroundColor: const Color(0xffffc107),
    leading: BackButton(
      onPressed: backOnPressed,
    ),
    title: SearchField(
      controller: controller,
      onChanged: onChanged,
    ),
    actions: [
      IconButton(
        onPressed: closeOnPressed,
        icon: const Icon(Icons.close),
      ),
    ],
  );
}
