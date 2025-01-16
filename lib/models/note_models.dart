import 'package:hive/hive.dart';

part 'note_models.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
@HiveField(0)
  final String Title;
@HiveField(1)
  final String subtitle;
@HiveField(2)
  final String data;
@HiveField(3)
  final int color;

  NoteModel({
    required this.Title,
    required this.subtitle,
    required this.data,
    required this.color,
  });
}
