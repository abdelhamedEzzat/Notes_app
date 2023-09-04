import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(1)
  String title;
  @HiveField(2)
  String subTitle;
  @HiveField(3)
  final String date;
  @HiveField(4)
  int color;

  NoteModel(
      {required this.color,
      required this.title,
      required this.subTitle,
      required this.date});
}
