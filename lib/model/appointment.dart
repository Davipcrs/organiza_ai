import 'package:calendar_view/calendar_view.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:organiza_ai/api/generated/appointment_service.pb.dart';

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
    if (color! == 0) {
      this.color = 0xff008000;
    }
    if (canceled == true) {
      this.color = 0xff4a4444; //Black color
    }
  }

  void convertToAppointment(AppointmentMessage message) {
    DateTime? auxiliarStart = DateTime.tryParse(message.start);
    DateTime? auxiliarEnd = DateTime.tryParse(message.end);
    create(message.id.toInt(), message.title, auxiliarStart!, auxiliarEnd!,
        message.desc, message.canceled, message.color.toInt());
  }

  AppointmentMessage convertToMessage() {
    AppointmentMessage message = AppointmentMessage(
      id: Int64(id!),
      title: title,
      desc: desc,
      start: start.toString(),
      end: end.toString(),
      canceled: canceled,
      color: Int64(color!),
    );
    return message;
  }

  AddAppointmentMessage convertToAdd() {
    AddAppointmentMessage message = AddAppointmentMessage(
      title: title,
      desc: desc,
      start: start.toString(),
      end: end.toString(),
      canceled: canceled,
      color: Int64(color!),
    );
    return message;
  }

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
