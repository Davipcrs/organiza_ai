import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/model/appointment.dart';

final viewedAppointmentProvider = StateProvider((ref) => Appointment());

final editedAppointmentProvider = StateProvider((ref) => Appointment());
