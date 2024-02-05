import 'package:fixnum/fixnum.dart';
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

  void convertToNote(NoteMessage noteMessage) {
    // convert string to dateTime;
    DateTime? auxiliarCreated = DateTime.tryParse(noteMessage.created);
    DateTime? auxiliarDeadLine = DateTime.tryParse(noteMessage.deadLine);

    create(
        id = noteMessage.id.toInt(),
        title = noteMessage.title,
        desc = noteMessage.desc,
        created = auxiliarCreated,
        deadLine = auxiliarDeadLine);
  }

  NoteMessage convertToMessage() {
    NoteMessage message = NoteMessage(
      id: Int64(id!),
      title: title,
      desc: desc,
      created: created?.toIso8601String(),
      deadLine: deadLine?.toIso8601String(),
    );
    return message;
  }

  AddNoteMessage convertToAdd() {
    AddNoteMessage message = AddNoteMessage(
      title: title,
      desc: desc,
      created: created?.toIso8601String(),
      deadLine: deadLine?.toIso8601String(),
    );
    return message;
  }
}
