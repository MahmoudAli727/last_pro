import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:last_pro/widgets/CustomAppbar.dart';

class note_view_body extends StatelessWidget {
  const note_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomerAppBar(),
          Note_View_itme(),
        ],
      ),
    );
  }
}

class Note_View_itme extends StatelessWidget {
  const Note_View_itme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "Bulid your career with Mahmoud Ali",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 28,
                )),
          ),
        ],
      ),
    );
  }
}
