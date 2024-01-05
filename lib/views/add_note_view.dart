import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/controllers/responsiness.dart';
import 'package:organiza_ai/views/widgets/add_note_widget.dart';
import 'package:organiza_ai/views/widgets/app_bar.dart';
import 'package:organiza_ai/views/widgets/app_drawer.dart';
import 'package:organiza_ai/views/widgets/nav_rail.dart';

class AddNoteView extends ConsumerWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isMobile =
        ref.watch(isMobileProvider.notifier).updateScreenSize(context);
    return Scaffold(
      body: const Row(
        children: [
          NavRail(),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(child: AddNoteWidget()),
        ],
      ),
      drawer: isMobile ? customAppDrawer(context, ref) : null,
      appBar: isMobile ? customAppBar(context, ref) : null,
    );
  }
}
