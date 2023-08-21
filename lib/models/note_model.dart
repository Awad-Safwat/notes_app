import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String supTitle;
  @HiveField(2)
  String date;
  @HiveField(3)
  int Color;

  NoteModel({
    required this.title,
    required this.Color,
    required this.date,
    required this.supTitle,
  });
}
