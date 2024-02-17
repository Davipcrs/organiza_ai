import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:organiza_ai/views/widgets/calendar_widgets/week_widget.dart';

class MonthWidget extends StatelessWidget {
  MonthWidget({super.key});

  final GlobalKey<MonthViewState> state = GlobalKey();

  @override
  Widget build(BuildContext context) {
    //return WeekWidget();
    return MonthView(
      useAvailableVerticalSpace: true,
      key: state,
      controller: CalendarControllerProvider.of(context).controller,
      borderColor: Theme.of(context).colorScheme.primary,
      cellAspectRatio: 1.75,
      headerBuilder: (date) {
        return Container(
          color: Theme.of(context).colorScheme.background,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  state.currentState!.previousPage();
                  //discover how to get to the previous month
                },
                icon: const Icon(Icons.arrow_back),
              ),
              Text(
                date.toString().split(" ")[0],
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              IconButton(
                onPressed: () {
                  state.currentState!.nextPage();
                  //discover how to get to the next month
                },
                icon: const Icon(Icons.arrow_forward),
              )
            ],
          ),
        );
      },
      weekDayBuilder: (day) {
        if (day == 0) {
          return const Center(
            child: Text("S"),
          );
        }
        if (day == 1) {
          return const Center(
            child: Text("T"),
          );
        }
        if (day == 2) {
          return const Center(
            child: Text("Q"),
          );
        }
        if (day == 3) {
          return const Center(
            child: Text("Q"),
          );
        }
        if (day == 4) {
          return const Center(
            child: Text("S"),
          );
        }
        if (day == 5) {
          return const Center(
            child: Text("S"),
          );
        }
        if (day == 6) {
          return const Center(
            child: Text("D"),
          );
        }
        return const SizedBox.shrink();
      },
      cellBuilder: (date, event, isToday, isInMonth) {
        if (isToday) {
          return Container(
            // Booleans for the colors
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  date.day.toString(),
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer),
                ),
                event.isNotEmpty
                    // Change to a ListView for multiple Events
                    ? Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: event[0].color),
                          width: double.maxFinite,
                          child: Center(child: Text(event[0].title)),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          );
        } else if (isInMonth) {
          return Container(
            // Booleans for the colors
            color: Theme.of(context).colorScheme.secondaryContainer,
            child: Column(
              children: [
                Text(
                  date.day.toString(),
                  style: TextStyle(
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer),
                ),
                // Change to a ListView for multiple Events
                Container(
                  child: event.isNotEmpty
                      ? Text(event[0].title)
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          );
        } else {
          return Container(
            // Booleans for the colors
            color: Theme.of(context).colorScheme.tertiaryContainer,
            child: Column(
              children: [
                Text(
                  date.day.toString(),
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiaryContainer),
                ),
                Container(
                  child: event.isNotEmpty
                      ? Text(event[0].title)
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
