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
    return Column(
      children: [
        Row(
          children: [
            Text(note.title!),
            const VerticalDivider(thickness: 1, width: 1),
            Text(note.created.toString()),
          ],
        ),
        Expanded(
          child: Markdown(data: note.desc!),
        ),
      ],
    );
  }
}
