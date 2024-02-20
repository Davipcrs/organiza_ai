import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/controllers/responsiness.dart';
import 'package:organiza_ai/views/widgets/app_bar.dart';
import 'package:organiza_ai/views/widgets/app_drawer.dart';
import 'package:organiza_ai/views/widgets/calendar_widgets/day_widget.dart';
import 'package:organiza_ai/views/widgets/nav_rail.dart';

class DayCalendarView extends ConsumerStatefulWidget {
  final DateTime init;
  const DayCalendarView({super.key, required this.init});

  @override
  ConsumerState<DayCalendarView> createState() => _DayCalendarViewState();
}

class _DayCalendarViewState extends ConsumerState<DayCalendarView> {
  @override
  Widget build(BuildContext context) {
    bool isMobile =
        ref.watch(isMobileProvider.notifier).updateScreenSize(context);
    return Scaffold(
      body: Row(
        children: [
          const NavRail(),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
              child: DayWidget(
            init: widget.init,
          )),
        ],
      ),
      drawer: isMobile ? customAppDrawer(context, ref) : null,
      appBar: isMobile ? customAppBar(context, ref) : null,
    );
  }
}
