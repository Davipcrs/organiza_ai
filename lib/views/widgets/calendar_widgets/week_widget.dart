import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

class WeekWidget extends StatelessWidget {
  final GlobalKey<WeekViewState>? state = GlobalKey();
  //final double? width;
  WeekWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return WeekView(
      key: state,
      controller: CalendarControllerProvider.of(context).controller,
      heightPerMinute: 0.75,
      eventArranger: const SideEventArranger(),
      startDay: WeekDays.sunday,
      backgroundColor: Theme.of(context).colorScheme.background,
      headerStyle: HeaderStyle(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
      ),
      eventTileBuilder: (date, events, boundry, start, end) {
        // Return your widget to display as event tile.
        return Container(
          height: 200,
          color: Colors.blue,
        );
      },
      fullDayEventBuilder: (events, date) {
        // Return your widget to display full day event view.
        return Container();
      },
    );
  }
}
