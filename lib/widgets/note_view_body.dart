import 'package:flutter/material.dart';
import 'package:last_pro/widgets/CustomAppbar.dart';
import 'package:last_pro/widgets/Note_View_itme.dart';

class note_view_body extends StatelessWidget {
  const note_view_body({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomerAppBar(),
          Expanded(child: Container(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Note_View_itme();
              },
            ),
          )),
        ],
      ),
    );
  }
}
