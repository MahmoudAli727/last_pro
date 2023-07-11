// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:last_pro/views/widgets/color_Item.dart';

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int curruntindex = 0;
  List<Color> Colors = const [
    Color(0xffF44174),
    Color(0xffFA7E61),
    Color(0xffFEE1C7),
    Color(0xffB5A886),
    Color(0xff4C1E4F),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: Colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                curruntindex = index;
                setState(() {});
              },
              child: Color_Item(
                Colors: Colors[index],
                isActive: curruntindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
