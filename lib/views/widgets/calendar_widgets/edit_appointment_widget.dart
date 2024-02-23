import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/api.dart';
import 'package:organiza_ai/controllers/calendar_controller.dart';
import 'package:organiza_ai/model/appointment.dart';
import 'package:organiza_ai/views/widgets/date_time_picker.dart';

class EditAppointmentWidget extends ConsumerStatefulWidget {
  const EditAppointmentWidget({super.key});

  @override
  ConsumerState<EditAppointmentWidget> createState() =>
      _EditAppointmentWidgetState();
}

class _EditAppointmentWidgetState extends ConsumerState<EditAppointmentWidget> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  DateTime? start = DateTime.now();
  DateTime? end = DateTime.now().add(const Duration(minutes: 30));
  int color = 0;
  bool canceled = false;
  late Appointment appointment;

  dateUpdate(startValue, endValue) {
    setState(() {
      start = startValue;
      end = endValue;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    appointment = ref.watch(editedAppointmentProvider);
    titleController.text = appointment.title!;
    descController.text = appointment.desc!;
    start = appointment.start!;
    end = appointment.end!;
    color = appointment.color!;
    canceled = appointment.canceled!;
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
                      "Início: ${start!.day}/${start!.month}/${start!.year} - ${start!.hour}:${start!.minute}"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    end = await showDateTimePicker(context: context);
                    dateUpdate(start, end);
                  },
                  child: Text(
                      "Fim: ${end!.day}/${end!.month}/${end!.year} - ${end!.hour}:${end!.minute}"),
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
                  context.go("/calendar/view");
                },
                child: const Text("Retornar"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (end!.isAfter(start!)) {
                    appointment.title = titleController.text;
                    appointment.desc = descController.text;
                    appointment.start = start;
                    appointment.end = end;
                    appointment.canceled = canceled;
                    appointment.color = color;
                    ref
                        .watch(apiUpdateAppointmentProvider.notifier)
                        .editAppointment(appointment);
                    Future.delayed(Duration(milliseconds: 100));
                    ref.invalidate(apiAppointmentsProvider);
                    context.go("/calendar");
                  }
                },
                child: const Text("Editar"),
              )
            ],
          )
        ],
      ),
    );
  }
}
