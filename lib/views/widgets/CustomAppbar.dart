// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:last_pro/views/widgets/Custom_Icon.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar(
      {super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        Custom_Icon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
