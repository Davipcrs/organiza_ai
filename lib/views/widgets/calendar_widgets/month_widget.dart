import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:organiza_ai/views/widgets/calendar_widgets/week_widget.dart';

class MonthWidget extends StatelessWidget {
  final GlobalKey<MonthViewState> state = GlobalKey();
  MonthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //return WeekWidget();
    return MonthView(
      key: state,
      controller: CalendarControllerProvider.of(context).controller,
      borderColor: Theme.of(context).colorScheme.onBackground,
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
      cellBuilder: (date, event, isToday, isInMonth) {
        print(event);

        if (isToday) {
          return Container(
            // Booleans for the colors
            color: Theme.of(context).colorScheme.primary,
            child: Column(children: [Container()]),
          );
        } else if (isInMonth) {
          return Container(
            // Booleans for the colors
            color: Theme.of(context).colorScheme.onBackground,
          );
        } else {
          return Container(
            // Booleans for the colors
            color: Theme.of(context).colorScheme.background,
          );
        }
      },
    );
  }
}
