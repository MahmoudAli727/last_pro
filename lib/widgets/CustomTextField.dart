import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
          hintText: "Text",
          focusedBorder: outlinebordernote(),
          enabledBorder: outlinebordernote(),
          border: outlinebordernote()),
    );
  }

  OutlineInputBorder outlinebordernote() {
    return OutlineInputBorder(borderSide: BorderSide(color: Colors.white));
  }
}
