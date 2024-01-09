import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/controllers/responsiness.dart';
import 'package:organiza_ai/views/widgets/app_bar.dart';
import 'package:organiza_ai/views/widgets/app_drawer.dart';
import 'package:organiza_ai/views/widgets/nav_rail.dart';
import 'package:organiza_ai/views/widgets/note_widget.dart';

class MainView extends ConsumerStatefulWidget {
  const MainView({super.key});

  @override
  ConsumerState<MainView> createState() => _MainViewState();
}

class _MainViewState extends ConsumerState<MainView> {
  @override
  Widget build(BuildContext context) {
    bool isMobile =
        ref.watch(isMobileProvider.notifier).updateScreenSize(context);
    return Scaffold(
      body: const Row(
        children: [
          NavRail(),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(child: NotesWidget()),
        ],
      ),
      drawer: isMobile ? customAppDrawer(context, ref) : null,
      appBar: isMobile ? customAppBar(context, ref) : null,
    );
  }
}
