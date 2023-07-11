import 'package:flutter/material.dart';
import 'package:last_pro/const.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.onChanged,
      required this.Hint,
      this.maxlines = 1,
      this.onSaved});
  final String Hint;
  final int maxlines;
  void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxlines,
      decoration: InputDecoration(
          hintText: Hint,
          focusedBorder: outlinebordernote(),
          enabledBorder: outlinebordernote(),
          border: outlinebordernote()),
    );
  }

  OutlineInputBorder outlinebordernote() {
    return OutlineInputBorder(borderSide: BorderSide(color: Colors.white));
  }
}
