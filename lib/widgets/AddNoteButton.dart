import 'package:flutter/material.dart';
import 'package:last_pro/widgets/CustomTextField.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
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
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
