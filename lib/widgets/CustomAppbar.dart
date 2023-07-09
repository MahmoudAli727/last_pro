import 'package:flutter/material.dart';
import 'package:last_pro/widgets/Custom_Icon.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar({super.key, required this.text, required this.icon});
  final String text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        Custom_Icon(
          icon: icon,
        ),
      ],
    );
  }
}
