// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:hive/hive.dart';

part 'notes_model.g.dart';

@HiveType(typeId: 0)
class notes_model extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String Subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;
  notes_model({
    required this.title,
    required this.Subtitle,
    required this.date,
    required this.color,
  });
}
