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
                  onEditingComplete: () async {
                    todo.title = titleController.text;
                    ref.watch(apiUpdateTodoProvider.notifier).updateTodo(todo);
                    await Future.delayed(const Duration(milliseconds: 300));
                    ref.invalidate(apiTodosProvider);
                  },
                  // TODO:
                  // LEMBRAR de testar a questão do BackSpace nos To do, não tava dando certo.

                  //onTapOutside: (event) {
                  //  todo.title = titleController.text;
                  //  ref.watch(apiUpdateTodoProvider.notifier).updateTodo(todo);
                  //  ref.invalidate(apiTodosProvider);
                  //},
                  //onSubmitted: (value) {
                  //  todo.title = titleController.text;
                  //  ref.watch(apiUpdateTodoProvider.notifier).updateTodo(todo);
                  //  ref.invalidate(apiTodosProvider);
                  //},
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
