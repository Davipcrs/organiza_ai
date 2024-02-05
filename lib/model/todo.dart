import 'package:fixnum/fixnum.dart';
import 'package:organiza_ai/api/generated/todo_service.pb.dart';

class Todo {
  late int? id;
  late String? title;

  void create(id, title) {
    this.id = id;
    this.title = title;
  }

  void convertToTodo(TodoMessage message) {
    create(message.id.toInt(), message.title);
  }

  TodoMessage convertToMessage() {
    return TodoMessage(id: Int64(id!), title: title);
  }

  AddTodoMessage convertToAdd() {
    return AddTodoMessage(title: title);
  }
}
