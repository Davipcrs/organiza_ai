import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/controllers/responsiness.dart';
import 'package:organiza_ai/views/widgets/app_bar.dart';
import 'package:organiza_ai/views/widgets/app_drawer.dart';
import 'package:organiza_ai/views/widgets/nav_rail.dart';
import 'package:organiza_ai/views/widgets/view_note_widget.dart';

class NoteDetailsView extends ConsumerStatefulWidget {
  const NoteDetailsView({super.key});

  @override
  ConsumerState<NoteDetailsView> createState() => _NoteDetailsViewState();
}

class _NoteDetailsViewState extends ConsumerState<NoteDetailsView> {
  @override
  Widget build(BuildContext context) {
    bool isMobile =
        ref.watch(isMobileProvider.notifier).updateScreenSize(context);
    return Scaffold(
      body: const Row(
        children: [
          NavRail(),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(child: ViewNoteWidget()),
        ],
      ),
      drawer: isMobile ? customAppDrawer(context, ref) : null,
      appBar: isMobile ? customAppBar(context, ref) : null,
    );
  }
}
