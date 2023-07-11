// ignore_for_file: file_names, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Custom_Icon extends StatelessWidget {
  const Custom_Icon({super.key, required this.icon, this.onPressed});
  final icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          size: 24,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
