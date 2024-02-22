import 'package:flutter/material.dart';

Future<DateTime?> showDateTimePicker(
    {required BuildContext context, DateTime? initialDate}) async {
  initialDate ??= DateTime.now();
  DateTime firstDate = initialDate.subtract(const Duration(days: 365 * 100));
  DateTime lastDate = firstDate.add(const Duration(days: 365 * 200));

  final DateTime? selectedDate = await showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: firstDate,
    lastDate: lastDate,
  );

  if (selectedDate == null) {
    return null;
  }

  if (!context.mounted) {
    // Check if the widget is alive
    return selectedDate;
  }

  final TimeOfDay? selectedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.fromDateTime(selectedDate),
  );

  if (selectedTime == null) {
    return selectedDate;
  } else {
    return DateTime(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
      selectedTime.hour,
      selectedTime.minute,
    );
  }
}
