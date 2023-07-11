// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:last_pro/const.dart';
import 'package:last_pro/models/notes_model.dart';
import 'package:last_pro/views/widgets/color_Item.dart';

class EditColors_list extends StatefulWidget {
  const EditColors_list({
    Key? key,
    required this.note,
  }) : super(key: key);
  final notes_model note;
  @override
  State<EditColors_list> createState() => _EditColors_listState();
}

class _EditColors_listState extends State<EditColors_list> {
  late int curruntindex;
  void initState() {
    curruntindex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                curruntindex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: Color_Item(
                Colors: kColors[index],
                isActive: curruntindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
