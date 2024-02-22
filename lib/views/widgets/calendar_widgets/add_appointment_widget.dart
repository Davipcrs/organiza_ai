import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/api.dart';
import 'package:organiza_ai/model/appointment.dart';
import 'package:organiza_ai/views/widgets/date_time_picker.dart';

class AddAppointmentWidget extends ConsumerStatefulWidget {
  const AddAppointmentWidget({super.key});

  @override
  ConsumerState<AddAppointmentWidget> createState() =>
      _AddAppointmentWidgetState();
}

class _AddAppointmentWidgetState extends ConsumerState<AddAppointmentWidget> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  DateTime? start = DateTime.now();
  DateTime? end = DateTime.now().add(const Duration(minutes: 30));
  int color = 0xff008000;

  dateUpdate(startValue, endValue) {
    setState(() {
      start = startValue;
      end = endValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextField(
                controller: titleController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Título"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    start = await showDateTimePicker(context: context);
                    dateUpdate(start, end);
                  },
                  child: Text(
                      "${start!.day}/${start!.month}/${start!.year} - ${start!.hour}:${start!.minute}"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    end = await showDateTimePicker(context: context);
                    dateUpdate(start, end);
                  },
                  child: Text(
                      "${end!.day}/${end!.month}/${end!.year} - ${end!.hour}:${end!.minute}"),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(color),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Cor"),
                ),
              ],
            ),
          ),
          Expanded(
            child: TextField(
              textAlign: TextAlign.justify,
              textAlignVertical: TextAlignVertical.top,
              controller: descController,
              maxLines: null,
              expands: true,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText: "Descrição",
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.go("/calendar");
                },
                child: const Text("Retornar"),
              ),
              ElevatedButton(
                onPressed: () async {
                  Appointment appointment = Appointment();
                  appointment.create(0, titleController.text, start!, end!,
                      descController.text, false, color);
                  ref
                      .watch(apiAddAppointmentProvider.notifier)
                      .addAppointment(appointment);
                  Future.delayed(Duration(milliseconds: 100));
                  ref.invalidate(apiAppointmentsProvider);
                  context.go("/calendar");
                },
                child: const Text("Adicionar"),
              )
            ],
          )
        ],
      ),
    );
  }
}
