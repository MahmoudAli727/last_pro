import 'package:flutter/material.dart';
import 'package:last_pro/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.ontap});
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child: Text(
          "Add",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}
