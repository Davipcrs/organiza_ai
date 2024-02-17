import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

class Appointment {
  late int? id;
  late String? title;
  late String? desc;
  late DateTime? start;
  late DateTime? end;
  late bool? canceled;
  late int? color;

  void create(int id, String title, DateTime start, DateTime end,
      [String? desc, bool? canceled, int? color]) {
    this.id = id;
    this.title = title;
    this.desc = desc;
    this.start = start;
    this.end = end;
    this.canceled = canceled;
    this.color = color;
    if (canceled == true) {
      this.color = 0xff4a4444; //Black color
    }
  }

  void convertToAppointment() {}
  void convertToMessage() {}
  void convertToAdd() {}
  CalendarEventData convertToCalendarEventData() {
    return CalendarEventData(
      title: title!,
      date: start!,
      startTime: start!,
      endTime: end!,
      endDate: end!,
      description: desc!,
      color: Color(color!),
    );
  }
}
