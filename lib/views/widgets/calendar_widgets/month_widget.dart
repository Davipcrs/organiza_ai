import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

customMonthWidget(context) {
  return MonthView(
    controller: CalendarControllerProvider.of(context).controller,
    borderColor: Theme.of(context).colorScheme.background,
    cellAspectRatio: 1.75,
    headerBuilder: (date) {
      return Container(
        color: Theme.of(context).colorScheme.background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
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
                //discover how to get to the next month
              },
              icon: const Icon(Icons.arrow_forward),
            )
          ],
        ),
      );
    },
  );
}
