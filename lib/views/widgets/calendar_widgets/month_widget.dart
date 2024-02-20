import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/api.dart';
import 'package:organiza_ai/model/appointment.dart';

class MonthWidget extends ConsumerStatefulWidget {
  MonthWidget({super.key});

  @override
  ConsumerState<MonthWidget> createState() => _MonthWidgetState();
}

class _MonthWidgetState extends ConsumerState<MonthWidget> {
  final GlobalKey<MonthViewState> state = GlobalKey();

  late AsyncValue appointmentList;

  void setData() {
    appointmentList = ref.watch(apiAppointmentsProvider);
  }

  @override
  Widget build(BuildContext context) {
    setData();
    //return DayWidget();

    return appointmentList.when(
      error: (err, stack) => Center(child: Text('Error $err')),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (dataList) {
        EventController controller = EventController();
        List<CalendarEventData> events = [];
        for (Appointment appointment in dataList) {
          events.add(appointment.convertToCalendarEventData());
        }
        controller.addAll(events);
        return MonthView(
          useAvailableVerticalSpace: true,
          key: state,
          controller: controller,
          borderColor: Theme.of(context).colorScheme.primary,
          cellAspectRatio: 1.75,
          onCellTap: (events, date) {
            context.go("/calendar/day", extra: date);
          },
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
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer),
                    ),
                    event.isNotEmpty
                        // Change to a ListView for multiple Events
                        ? Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: event.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: event[index].color),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Text(event[index].title),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
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
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer),
                    ),
                    // Change to a ListView for multiple Events
                    Container(
                      child: event.isNotEmpty
                          // Change to a ListView for multiple Events
                          ? Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: event.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: event[index].color),
                                      child: Column(
                                        children: [
                                          Center(
                                            child: Text(event[index].title),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
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
                          color: Theme.of(context)
                              .colorScheme
                              .onTertiaryContainer),
                    ),
                    Container(
                      child: event.isNotEmpty
                          // Change to a ListView for multiple Events
                          ? Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: event.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: event[index].color),
                                      child: Column(
                                        children: [
                                          Center(
                                            child: Text(event[index].title),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),
                  ],
                ),
              );
            }
          },
        );
      },
    );
  }
}


/*
Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: event[0].color),
                          width: double.maxFinite,
                          child: Center(child: Text(event[0].title)),
                        ),
*/