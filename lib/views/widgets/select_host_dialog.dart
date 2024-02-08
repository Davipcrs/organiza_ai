import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/api.dart';

//fix layout
//get a way to save the IP and read every time that the app runs.

showSelectHostDialog(WidgetRef ref, BuildContext context) {
  TextEditingController hostController = TextEditingController();
  hostController.text = ref.watch(apiHost);
  showAdaptiveDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: SizedBox(
        height: 200,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Insira o IP ou HOSTNAME do Servidor: "),
                TextField(
                  controller: hostController,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ref.read(apiHost.notifier).state =
                            hostController.text.toString();
                        const storage = FlutterSecureStorage();
                        storage.write(
                            key: "server_ip", value: ref.watch(apiHost));
                        context.pop();
                        //context.go("/note");
                      },
                      child: Text("OK!"),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
