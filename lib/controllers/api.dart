// api controller.

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/api/api_requests.dart';

final apiServicesProvider =
    Provider((ref) => ApiRequests(IP: "192.168.0.2", PORT: 50051));

final apiNotesProvider = FutureProvider(
  (ref) async {
    return await ref.watch(apiServicesProvider).getNotes();
  },
);
//https://github.com/Davipcrs/parking-app/blob/master/lib/controller/providers/api_services_provider.dart