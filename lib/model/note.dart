class Note {
  Note(this.id, this.title, this.desc, this.created, this.deadLine);
  late int id;
  late String title;
  late String? desc;
  late DateTime? created;
  late DateTime? deadLine;
}
