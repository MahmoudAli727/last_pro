import 'package:flutter/material.dart';
import 'package:last_pro/widgets/CustomAppbar.dart';
import 'package:last_pro/widgets/CustomButton.dart';
import 'package:last_pro/widgets/CustomTextField.dart';

class Edit_view_Body extends StatelessWidget {
  const Edit_view_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        SizedBox(
          height: 25,
        ),
        CustomerAppBar(),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          Hint: "Text",
        ),
        SizedBox(
          height: 10,
        ),
        CustomTextField(
          Hint: "Content",
        ),
        SizedBox(
          height: 50,
        ),
        CustomButton(),
        SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
