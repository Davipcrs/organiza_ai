import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

customAppBar(BuildContext context, WidgetRef ref) {
  return AppBar(
    actions: [
      IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          context.go("/note/add");
        },
      ),
    ],
  );
}
