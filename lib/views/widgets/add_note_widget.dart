import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/controllers/responsiness.dart';

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
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(bodyMarkdownProvider.notifier)
                        .update((state) => bodyController.text);
                  },
                  child: const Text("Visualizar"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Cancelar"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Adicionar"),
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
