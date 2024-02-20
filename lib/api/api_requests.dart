// all api requests class
import 'package:fixnum/fixnum.dart';
import 'package:organiza_ai/api/api_connect.dart';
import 'package:organiza_ai/api/generated/appointment_service.pbgrpc.dart';
import 'package:organiza_ai/api/generated/notes_service.pbgrpc.dart';
import 'package:organiza_ai/api/generated/todo_service.pbgrpc.dart';
import 'package:organiza_ai/model/appointment.dart';
import 'package:organiza_ai/model/note.dart';
import 'package:organiza_ai/model/todo.dart';

class ApiRequests {
  var apiConnectionInstance = createApiConnectionInstance();
  NotesServicesClient? noteStub;
  TodoServicesClient? todoStub;
  AppointmentServicesClient? appointmentStub;
  ApiRequests({required String IP, required int PORT}) {
    apiConnectionInstance.setConfig(ip: IP, port: PORT);
    var connection = apiConnectionInstance.returnConnection();

    noteStub = NotesServicesClient(connection);
    todoStub = TodoServicesClient(connection);
    appointmentStub = AppointmentServicesClient(connection);
  }

// =========================================================================
// Note
// =========================================================================

  Future<List<Note>> getNotes() async {
    // void -> Repeated (List of) NoteMessage
    List<Note> list = [];
    var allNotes = noteStub!.getAllNotes(empty());
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
      await noteStub!.getNote(
        SearchNoteRequest(id: Int64(id)),
      ),
    );
    return note;
  }

  Future<Note> addNote(Note note) async {
    // AddNoteMessage -> SearchNoteMessage
    var response = await noteStub!.addNote(note.convertToAdd());
    note.id = response.id.toInt();
    return note;
  }

  Future<Note> editNote(Note note) async {
    // NoteMessage -> NoteMessage
    note.convertToNote(
      await noteStub!.editNote(
        note.convertToMessage(),
      ),
    );
    return note;
  }

  Future<void> removeNote(int id) async {
    // SearchNoteMessage -> void
    await noteStub!.removeNote(
      SearchNoteRequest(id: Int64(id)),
    );
    return;
  }

// =========================================================================
// Todo
// =========================================================================

  Future<List<Todo>> getTodos() async {
    List<Todo> list = [];
    var allTodos = todoStub!.getAllTodo(emptyTodo());
    try {
      var awaitedTodos = await allTodos;
      for (var message in awaitedTodos.todo) {
        Todo todo = Todo();
        todo.convertToTodo(message);
        list.add(todo);
      }
    } catch (e) {
      print("ERROR: $e");
    }
    return list;
  }

  Future<Todo> addTodo(Todo todo) async {
    var response = await todoStub!.addTodo(todo.convertToAdd());
    todo.id = response.id.toInt();

    return todo;
  }

  Future<Todo> updateTodo(Todo todo) async {
    todo.convertToTodo(
      await todoStub!.editTodo(
        todo.convertToMessage(),
      ),
    );

    return todo;
  }

  Future<Todo> getOneTodo(int id) async {
    Todo todo = Todo();
    todo.convertToTodo(
      await todoStub!.getTodo(
        SearchTodoMessage(id: Int64(id)),
      ),
    );

    return todo;
  }

  Future<void> removeTodo(int id) async {
    await todoStub!.removeTodo(SearchTodoMessage(id: Int64(id)));
    return;
  }

// =========================================================================
// APPOINTMENTS
// =========================================================================

  Future<List<Appointment>> getAppointments() async {
    List<Appointment> list = [];
    var allAppointments =
        appointmentStub!.getAllAppointments(emptyAppointment());
    try {
      var awaitedAppointments = await allAppointments;
      for (var message in awaitedAppointments.appointment) {
        Appointment appointment = Appointment();
        appointment.convertToAppointment(message);
        list.add(appointment);
      }
    } catch (e) {
      print("ERROR: $e");
    }

    return list;
  }

  Future<Appointment> addAppointment(Appointment appointment) async {
    var response =
        await appointmentStub!.addAppointment(appointment.convertToAdd());
    appointment.id = response.id.toInt();
    return appointment;
  }

  Future<Appointment> editAppointment(Appointment appointment) async {
    appointment.convertToAppointment(
      await appointmentStub!.editAppointment(
        appointment.convertToMessage(),
      ),
    );
    return appointment;
  }

  Future<Appointment> getOneAppointment(int id) async {
    Appointment appointment = Appointment();
    appointment.convertToAppointment(
      await appointmentStub!.getAppointment(
        SearchAppointmentRequest(
          id: Int64(id),
        ),
      ),
    );

    return appointment;
  }

  Future<void> removeAppointment(int id) async {
    appointmentStub!.removeAppointment(SearchAppointmentRequest(id: Int64(id)));
    return;
  }
}
