import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/controllers/note_controllers.dart';
import 'package:organiza_ai/model/note.dart';

class ViewNoteWidget extends ConsumerStatefulWidget {
  const ViewNoteWidget({super.key});

  @override
  ConsumerState<ViewNoteWidget> createState() => _ViewNoteWidgetState();
}

class _ViewNoteWidgetState extends ConsumerState<ViewNoteWidget> {
  @override
  Widget build(BuildContext context) {
    Note note = ref.watch(viewedNoteProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                note.title!,
                style: const TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Container(
                    width: 10, color: Theme.of(context).colorScheme.onPrimary),
              ),
              Text(
                note.created.toString().substring(0, 19),
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
          Expanded(
            child: Markdown(data: note.desc!),
          ),
        ],
      ),
    );
  }
}
