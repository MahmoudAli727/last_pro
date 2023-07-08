import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromARGB(255, 64, 255, 86),
        ),
        child: Text(
          "Add",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      onTap: () {},
    );
  }
}
