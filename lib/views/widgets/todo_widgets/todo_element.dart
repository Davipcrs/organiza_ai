import 'package:flutter/material.dart';
import 'package:organiza_ai/model/todo.dart';

todoElement(BuildContext context, Todo todo) {
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
                  decoration: const InputDecoration(border: InputBorder.none),
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
              ),
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                icon: Icon(Icons.menu),
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
