import 'package:flutter/material.dart';
import 'package:last_pro/views/widgets/CustomButton.dart';
import 'package:last_pro/views/widgets/CustomTextField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          height: 50,
        ),
        CustomButton(),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
