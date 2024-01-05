import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddNoteWidget extends ConsumerStatefulWidget {
  const AddNoteWidget({super.key});

  @override
  ConsumerState<AddNoteWidget> createState() => _AddNoteWidgetState();
}

class _AddNoteWidgetState extends ConsumerState<AddNoteWidget> {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Título"),
            ),
          ),
          Expanded(
            child: TextField(
              controller: bodyController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Descrição",
                  focusColor: Theme.of(context).colorScheme.secondary,
                  hoverColor: Theme.of(context).colorScheme.secondary),
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onSecondary),
              maxLines: null,
              keyboardType: TextInputType.multiline,
            ),
          ),
        ],
      ),
    );
  }
}
