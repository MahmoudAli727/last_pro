// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, non_constant_identifier_names, file_names
import 'package:flutter/material.dart';

class Color_Item extends StatelessWidget {
  const Color_Item({
    Key? key,
    required this.isActive,
    required this.Colors,
  }) : super(key: key);
  final bool isActive;
  final Color Colors;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            radius: 38,
            child: CircleAvatar(
              backgroundColor: Colors,
              radius: 34,
            ),
          )
        : CircleAvatar(
            backgroundColor: Colors,
            radius: 38,
          );
  }
}
