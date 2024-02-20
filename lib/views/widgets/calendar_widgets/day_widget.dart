import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/controllers/api.dart';
import 'package:organiza_ai/model/appointment.dart';

class DayWidget extends ConsumerStatefulWidget {
  final DateTime? init;
  //final double? width;
  const DayWidget({super.key, this.init});

  @override
  ConsumerState<DayWidget> createState() => _DayWidgetState();
}

class _DayWidgetState extends ConsumerState<DayWidget> {
  final GlobalKey<WeekViewState>? state = GlobalKey();
  late DateTime? initDay;
  late AsyncValue appointmentList;

  void setData() {
    appointmentList = ref.watch(apiAppointmentsProvider);
  }

  @override
  void initState() {
    initDay = widget.init;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    initDay ??= DateTime.now();
    setData();
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
        return DayView(
          initialDay: initDay,
          key: state,
          controller: controller,
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
      },
    );
  }
}
