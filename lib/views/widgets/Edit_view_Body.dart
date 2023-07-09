import 'package:flutter/material.dart';
import 'package:last_pro/views/widgets/CustomAppbar.dart';
import 'package:last_pro/views/widgets/CustomButton.dart';
import 'package:last_pro/views/widgets/CustomTextField.dart';

class Edit_view_Body extends StatelessWidget {
  const Edit_view_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
          child: Column(children: [
        SizedBox(
          height: 30,
        ),
        CustomerAppBar(text: "Edit Not", icon: Icons.search),
        SizedBox(
          height: 20,
        ),
        CustomTextField(Hint: "Text"),
        SizedBox(
          height: 10,
        ),
        CustomTextField(
          Hint: "Content",
          maxlines: 5,
        ),
        SizedBox(
          height: 200,
        ),
        CustomButton(
          ontap: () {},
        ),
      ])),
    );
  }
}
