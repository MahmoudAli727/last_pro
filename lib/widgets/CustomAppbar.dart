import 'package:flutter/material.dart';
import 'package:last_pro/widgets/Custom_Icon.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        Custom_Icon(),
      ],
    );
  }
}
