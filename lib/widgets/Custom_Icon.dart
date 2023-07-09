import 'package:flutter/material.dart';

class Custom_Icon extends StatelessWidget {
  const Custom_Icon({super.key, required this.icon});
  final icon;
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
        onPressed: () {},
      ),
    );
  }
}
