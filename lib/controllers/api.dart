// api controller.

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/api/api_requests.dart';
import 'package:organiza_ai/model/note.dart';
import 'package:organiza_ai/model/todo.dart';

final apiServicesProvider =
    Provider((ref) => ApiRequests(IP: "192.168.0.2", PORT: 50051));

final apiNotesProvider = FutureProvider(
  (ref) async {
    return await ref.watch(apiServicesProvider).getNotes();
  },
);

final apiTodoProvider = FutureProvider(
  (ref) async {
    List<Todo> a = List<Todo>.generate(
      25,
      (index) {
        Todo todo = Todo();
        todo.id = index;
        todo.title = "Hello from $index";
        return todo;
      },
    );
    print(a[0].title);
    return a;
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

  Future<Note> addNote(int id) async {
    return await ref.watch(apiServicesProvider).getOneNote(id);
  }
}

class _DeleteNoteNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<void> addNote(int id) async {
    await ref.watch(apiServicesProvider).removeNote(id);
  }
}


//https://github.com/Davipcrs/parking-app/blob/master/lib/controller/providers/api_services_provider.dart