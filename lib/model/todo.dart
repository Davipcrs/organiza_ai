import 'package:organiza_ai/api/generated/todo_service.pb.dart';

class Todo {
  late int? id;
  late String? title;

  void create() {}

  void convertToTodo() {}

  TodoMessage convertToMessage() {
    return TodoMessage();
  }

  AddTodoMessage convertToAdd() {
    return AddTodoMessage();
  }
}
