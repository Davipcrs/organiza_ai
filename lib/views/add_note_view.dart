import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddNoteView extends ConsumerStatefulWidget {
  const AddNoteView({super.key});

  @override
  ConsumerState<AddNoteView> createState() => _AddNoteViewState();
}

class _AddNoteViewState extends ConsumerState<AddNoteView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
