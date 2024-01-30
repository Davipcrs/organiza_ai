import 'package:flutter/material.dart';
import 'package:organiza_ai/model/todo.dart';

todoElement(BuildContext context, Todo todo) {
  TextEditingController titleController = TextEditingController();
  titleController.text = todo.title!;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        TextField(
          controller: titleController,
          style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        )
      ],
    ),
  );
}
