// api controller.

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/api/api_requests.dart';
import 'package:organiza_ai/model/appointment.dart';
import 'package:organiza_ai/model/note.dart';
import 'package:organiza_ai/model/todo.dart';

final apiServicesProvider = Provider(
  (ref) {
    if (kIsWeb) {
      return ApiRequests(IP: ref.watch(apiHost), PORT: 50051);
    }
    return ApiRequests(IP: ref.watch(apiHost), PORT: 50052);
  },
);

final apiHost = StateProvider(
  (ref) {
    if (kIsWeb) {
      return "organiza_ai.com";
    } else {
      return "";
    }
  },
);

final boolNullHost = StateProvider((ref) => true);

// =========================================================================
// NOTES
// =========================================================================

final apiNotesProvider = FutureProvider(
  (ref) async {
    return await ref.watch(apiServicesProvider).getNotes();
  },
);

final apiAddNoteProvider =
    AsyncNotifierProvider.autoDispose<_AddNoteNotifier, void>(
  _AddNoteNotifier.new,
);

final apiUpdateNoteProvider =
    AsyncNotifierProvider.autoDispose<_UpdateNoteNotifier, void>(
  _UpdateNoteNotifier.new,
);

final apiGetOneNoteProvider =
    AsyncNotifierProvider.autoDispose<_GetOneNoteNotifier, void>(
  _GetOneNoteNotifier.new,
);

final apiDeleteNoteProvider =
    AsyncNotifierProvider.autoDispose<_DeleteNoteNotifier, void>(
  _DeleteNoteNotifier.new,
);

class _AddNoteNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<Note> addNote(Note note) async {
    return await ref.watch(apiServicesProvider).addNote(note);
  }
}

class _UpdateNoteNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<Note> editNote(Note note) async {
    return await ref.watch(apiServicesProvider).editNote(note);
  }
}

class _GetOneNoteNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<Note> getOneNote(int id) async {
    return await ref.watch(apiServicesProvider).getOneNote(id);
  }
}

class _DeleteNoteNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<void> removeNote(int id) async {
    await ref.watch(apiServicesProvider).removeNote(id);
  }
}

// =========================================================================
// TODOS
// =========================================================================

final apiTodosProvider = FutureProvider(
  (ref) async {
    /*
    List<Todo> a = List<Todo>.generate(
      25,
      (index) {
        Todo todo = Todo();
        todo.id = index;
        todo.title = "Hello from $index";
        return todo;
      },
    );
    return a;
    */
    return await ref.watch(apiServicesProvider).getTodos();
  },
);

final apiAddTodoProvider =
    AsyncNotifierProvider.autoDispose<_AddTodoNotifier, void>(
  _AddTodoNotifier.new,
);

final apiUpdateTodoProvider =
    AsyncNotifierProvider.autoDispose<_UpdateTodoNotifier, void>(
  _UpdateTodoNotifier.new,
);

final apiGetOneTodoProvider =
    AsyncNotifierProvider.autoDispose<_GetOneTodoNotifier, void>(
  _GetOneTodoNotifier.new,
);

final apiDeleteTodoProvider =
    AsyncNotifierProvider.autoDispose<_DeleteTodoNotifier, void>(
  _DeleteTodoNotifier.new,
);

class _AddTodoNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<Todo> addTodo(Todo todo) async {
    return await ref.watch(apiServicesProvider).addTodo(todo);
  }
}

class _UpdateTodoNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<Todo> updateTodo(Todo todo) async {
    return await ref.watch(apiServicesProvider).updateTodo(todo);
  }
}

class _GetOneTodoNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<Todo> getOneTodo(int id) async {
    return await ref.watch(apiServicesProvider).getOneTodo(id);
  }
}

class _DeleteTodoNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<void> removeTodo(int id) async {
    return await ref.watch(apiServicesProvider).removeTodo(id);
  }
}

// =========================================================================
// APPOINTMENTS
// =========================================================================

final apiAppointmentsProvider = FutureProvider(
  (ref) async {
    return await ref.watch(apiServicesProvider).getAppointments();
  },
);

final apiAddAppointmentProvider =
    AsyncNotifierProvider.autoDispose<_AddAppointmentNotifier, void>(
  _AddAppointmentNotifier.new,
);

final apiUpdateAppointmentProvider =
    AsyncNotifierProvider.autoDispose<_UpdateAppointmentNotifier, void>(
  _UpdateAppointmentNotifier.new,
);

final apiGetOneAppointmentProvider =
    AsyncNotifierProvider.autoDispose<_GetOneAppointmentNotifier, void>(
  _GetOneAppointmentNotifier.new,
);

final apiDeleteAppointmentProvider =
    AsyncNotifierProvider.autoDispose<_DeleteAppointmentNotifier, void>(
  _DeleteAppointmentNotifier.new,
);

class _AddAppointmentNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<Appointment> addAppointment(Appointment appointment) async {
    return await ref.watch(apiServicesProvider).addAppointment(appointment);
  }
}

class _UpdateAppointmentNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<Appointment> editAppointment(Appointment appointment) async {
    return await ref.watch(apiServicesProvider).editAppointment(appointment);
  }
}

class _GetOneAppointmentNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<Appointment> getOneAppointment(int id) async {
    return await ref.watch(apiServicesProvider).getOneAppointment(id);
  }
}

class _DeleteAppointmentNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<void> removeAppointment(int id) async {
    await ref.watch(apiServicesProvider).removeAppointment(id);
  }
}


//https://github.com/Davipcrs/parking-app/blob/master/lib/controller/providers/api_services_provider.dart