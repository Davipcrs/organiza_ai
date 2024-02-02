// all api requests class
import 'package:fixnum/fixnum.dart';
import 'package:organiza_ai/api/api_connect.dart';
import 'package:organiza_ai/api/generated/notes_service.pbgrpc.dart';
import 'package:organiza_ai/model/note.dart';
import 'package:organiza_ai/model/todo.dart';

class ApiRequests {
  ApiConnection apiConnectionInstance = ApiConnection();
  NotesServicesClient? stub;
  ApiRequests({required String IP, required int PORT}) {
    apiConnectionInstance.setConfig(ip: IP, port: PORT);
    apiConnectionInstance.connect();
    stub = NotesServicesClient(apiConnectionInstance.connection!);
  }

// =========================================================================
// Note
// =========================================================================

  Future<List<Note>> getNotes() async {
    // void -> Repeated (List of) NoteMessage
    List<Note> list = [];
    var allNotes = stub!.getAllNotes(empty());
    try {
      var awaitedNotes = await allNotes;
      for (var message in awaitedNotes.note) {
        Note note = Note();
        note.convertToNote(message);
        list.add(note);
      }
    } catch (e) {
      print("ERROR: $e");
    }

    return list;
  }

  Future<Note> getOneNote(int id) async {
    // SearchNoteMessage -> NoteMessage
    Note note = Note();
    note.convertToNote(
      await stub!.getNote(
        SearchNoteRequest(id: Int64(id)),
      ),
    );
    return note;
  }

  Future<Note> addNote(Note note) async {
    // AddNoteMessage -> SearchNoteMessage
    var response = await stub!.addNote(note.convertToAdd());
    note.id = response.id.toInt();
    return note;
  }

  Future<Note> editNote(Note note) async {
    // NoteMessage -> NoteMessage
    note.convertToNote(
      await stub!.editNote(
        note.convertToMessage(),
      ),
    );
    return note;
  }

  Future<void> removeNote(int id) async {
    // SearchNoteMessage -> void
    await stub!.removeNote(
      SearchNoteRequest(id: Int64(id)),
    );
    return;
  }

// =========================================================================
// Todo
// =========================================================================

  getTodos() {}

  addTodo(Todo todo) {}

  updateTodo(Todo todo) {}

  getOneTodo(int id) {}

  removeTodo(int id) {}
}
