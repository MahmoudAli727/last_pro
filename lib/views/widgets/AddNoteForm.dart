import 'package:flutter/material.dart';
import 'package:last_pro/views/widgets/CustomButton.dart';
import 'package:last_pro/views/widgets/CustomTextField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, SubTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            Hint: "Text",
            onSaved: (p0) {
              title = p0;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onSaved: (p0) {
              SubTitle = p0;
            },
            Hint: "Content",
            maxlines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            ontap: () {},
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
