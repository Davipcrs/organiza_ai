import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/controllers/api.dart';
import 'package:organiza_ai/model/todo.dart';

todoElement(BuildContext context, Todo todo, WidgetRef ref) {
  TextEditingController titleController = TextEditingController();
  titleController.text = todo.title!;

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  controller: titleController,
                  onEditingComplete: () {
                    todo.title = titleController.text;
                    ref.watch(apiUpdateTodoProvider.notifier).updateTodo(todo);
                    ref.invalidate(apiTodosProvider);
                  },
                  onTapOutside: (event) {
                    todo.title = titleController.text;
                    ref.watch(apiUpdateTodoProvider.notifier).updateTodo(todo);
                    ref.invalidate(apiTodosProvider);
                  },
                  onSubmitted: (value) {
                    todo.title = titleController.text;
                    ref.watch(apiUpdateTodoProvider.notifier).updateTodo(todo);
                    ref.invalidate(apiTodosProvider);
                  },
                  decoration: const InputDecoration(border: InputBorder.none),
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
              ),
              IconButton(
                onPressed: () {
                  ref
                      .watch(apiDeleteTodoProvider.notifier)
                      .removeTodo(todo.id as int);
                  ref.invalidate(apiTodosProvider);
                },
                padding: EdgeInsets.zero,
                icon: Icon(Icons.cancel_outlined),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 4.0),
          child: Divider(
            thickness: 1,
            height: 3,
          ),
        ),
      ],
    ),
  );
}
