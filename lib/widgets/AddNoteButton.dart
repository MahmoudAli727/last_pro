import 'package:flutter/material.dart';
import 'package:last_pro/widgets/CustomTextField.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
