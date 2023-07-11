// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:last_pro/models/notes_model.dart';
import 'package:last_pro/views/widgets/CustomAppbar.dart';
import 'package:last_pro/views/widgets/CustomButton.dart';
import 'package:last_pro/views/widgets/CustomTextField.dart';

class Edit_view_Body extends StatefulWidget {
  const Edit_view_Body({
    Key? key,
    required this.note,
  }) : super(key: key);
  final notes_model note;

  @override
  State<Edit_view_Body> createState() => _Edit_view_BodyState();
}

class _Edit_view_BodyState extends State<Edit_view_Body> {
  String? title, Content;
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
        CustomTextField(
          Hint: "Text",
        ),
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
