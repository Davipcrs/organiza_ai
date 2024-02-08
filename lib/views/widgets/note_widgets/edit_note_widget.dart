import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/api.dart';
import 'package:organiza_ai/controllers/note_controllers.dart';
import 'package:organiza_ai/controllers/responsiness.dart';
import 'package:organiza_ai/model/note.dart';

class EditNoteWidget extends ConsumerStatefulWidget {
  const EditNoteWidget({super.key});

  @override
  ConsumerState<EditNoteWidget> createState() => _EditNoteWidgetState();
}

class _EditNoteWidgetState extends ConsumerState<EditNoteWidget> {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Note note = ref.watch(editedNoteProvider);
    titleController.text = note.title!;
    bodyController.text = note.desc!;
    bool isScreenBig =
        ref.watch(isScreenSmallProvider.notifier).updateScreenSize(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextField(
                controller: titleController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Título"),
              ),
            ),
          ),
          Expanded(
            child: TextField(
              textAlign: TextAlign.justify,
              textAlignVertical: TextAlignVertical.top,
              controller: bodyController,
              maxLines: null,
              expands: true,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText: "Descrição",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                isScreenBig
                    ? const SizedBox.shrink()
                    : ElevatedButton(
                        onPressed: () {
                          ref
                              .read(bodyMarkdownProvider.notifier)
                              .update((state) => bodyController.text);
                        },
                        child: const Text("Visualizar"),
                      ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      bodyController.text = "";
                      titleController.text = "";
                      ref
                          .read(bodyMarkdownProvider.notifier)
                          .update((state) => bodyController.text);
                    },
                    child: const Text("Limpar"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      note.title = titleController.text;
                      note.desc = bodyController.text;
                      ref.read(apiUpdateNoteProvider.notifier).editNote(note);
                      ref.invalidate(apiNotesProvider);
                      context.go("/note");
                    },
                    child: const Text("Editar"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          )
        ],
      ),
    );
  }
}
