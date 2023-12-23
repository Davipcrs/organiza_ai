import 'package:organiza_ai/api/generated/notes_service.pb.dart';

class Note {
  late int? id;
  late String? title;
  late String? desc;
  late DateTime? created;
  late DateTime? deadLine;

  void create(id, title, [desc, DateTime? created, DateTime? deadLine]) {
    this.id = id;
    this.title = title;
    this.desc = desc;
    if (created == null) {
      this.created = DateTime.now();
    } else {
      this.created = created;
    }

    this.deadLine = deadLine;
  }

  Note? convert(NoteMessage noteMessage) {
    Note auxiliar = Note();
    // convert string to dateTime;
    DateTime? auxiliarCreated;
    DateTime? auxiliarDeadLine;

    auxiliar.create(
        id = noteMessage.id.toInt(),
        title = noteMessage.title,
        desc = noteMessage.desc,
        created = auxiliarCreated,
        deadLine = auxiliarDeadLine);

    return auxiliar;
  }
}
