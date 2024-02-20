import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

class DayWidget extends StatefulWidget {
  final DateTime? init;
  //final double? width;
  const DayWidget({super.key, this.init});

  @override
  State<DayWidget> createState() => _DayWidgetState();
}

class _DayWidgetState extends State<DayWidget> {
  final GlobalKey<WeekViewState>? state = GlobalKey();
  late DateTime? initDay;
  @override
  void initState() {
    initDay = widget.init;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    initDay ??= DateTime.now();
    return DayView(
      initialDay: initDay,
      key: state,
      controller: CalendarControllerProvider.of(context).controller,
      heightPerMinute: 1,
      eventArranger: const SideEventArranger(),
      hourIndicatorSettings: HourIndicatorSettings(
        color: Theme.of(context).colorScheme.onBackground,
      ),
      liveTimeIndicatorSettings: HourIndicatorSettings(
        color: Theme.of(context).colorScheme.onBackground,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      headerStyle: HeaderStyle(
        leftIcon: const Icon(Icons.arrow_back),
        rightIcon: const Icon(Icons.arrow_forward),
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
      ),
    );
  }
}
