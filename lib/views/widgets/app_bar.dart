import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/api.dart';
import 'package:organiza_ai/controllers/responsiness.dart';
import 'package:organiza_ai/model/todo.dart';

customAppBar(BuildContext context, WidgetRef ref) {
  return AppBar(
    actions: [
      IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          int index = ref.read(selectedViewIndexProvider);
          if (index == 0) {
            context.go("/note/add");
          }
          if (index == 1) {
            Todo todo = Todo();
            todo.create(0, "To do");
            ref.read(apiAddTodoProvider.notifier).addTodo(todo);
            ref.invalidate(apiTodosProvider);
          }
          if (index == 2) {
            context.go("/calendar/add");
          }
        },
      ),
    ],
  );
}
