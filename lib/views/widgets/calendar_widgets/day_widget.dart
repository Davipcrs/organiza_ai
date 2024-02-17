import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

class DayWidget extends StatelessWidget {
  final GlobalKey<WeekViewState>? state = GlobalKey();
  //final double? width;
  DayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DayView(
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
