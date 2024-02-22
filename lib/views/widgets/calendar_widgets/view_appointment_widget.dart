import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/calendar_controller.dart';
import 'package:organiza_ai/model/appointment.dart';

class ViewAppointmentWidget extends ConsumerStatefulWidget {
  const ViewAppointmentWidget({super.key});

  @override
  ConsumerState<ViewAppointmentWidget> createState() =>
      _ViewAppointmentWidgetState();
}

class _ViewAppointmentWidgetState extends ConsumerState<ViewAppointmentWidget> {
  @override
  Widget build(BuildContext context) {
    Appointment appointment = ref.read(editedAppointmentProvider);
    return Column(
      children: [
        Center(
          child: Text(
              "Dia: ${appointment.start!.day.toString()}/${appointment.start!.month.toString()}/${appointment.start!.year.toString()}"),
        ),
        Row(
          children: [
            Text("Título: ${appointment.title}"),
            Text(
              "Início: ${appointment.start!.hour.toString()}:${appointment.start!.minute.toString()}",
            ),
            Text(
              "Fim: ${appointment.end!.hour.toString()}:${appointment.end!.minute.toString()}",
            ),
          ],
        ),
        Text("Desc: ${appointment.desc}"),
        Text("Cancelado: ${appointment.canceled}"),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                context.go("/calendar");
              },
              child: const Text("Retornar"),
            ),
            ElevatedButton(
              onPressed: () {
                ref.watch(editedAppointmentProvider.notifier).state =
                    appointment;
                //ref.invalidate(viewedAppointmentProvider);
                context.go("/calendar/edit");
              },
              child: const Text("Editar"),
            )
          ],
        )
      ],
    );
  }
}
