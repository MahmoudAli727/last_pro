import 'package:flutter/material.dart';
import 'package:last_pro/widgets/CustomAppbar.dart';

class note_view_body extends StatelessWidget {
  const note_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomerAppBar(),
      ],
    );
  }
}
