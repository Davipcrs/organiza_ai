import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/api.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  TextEditingController hostController = TextEditingController();

  readServerIp(WidgetRef ref) async {
    const storage = FlutterSecureStorage();
    var value = await storage.read(key: "server_ip");

    if (value == null) {
      if (ref.watch(boolNullHost) == false) {
        ref.read(boolNullHost.notifier).state = true;
      }
    } else {
      ref.read(boolNullHost.notifier).state = false;
      ref.read(apiHost.notifier).state = value;
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(apiHost);
    if (kIsWeb) {
      Future.delayed(Duration.zero, () => context.go("/note"));
    } else {
      readServerIp(ref);
      if (ref.watch(boolNullHost) == false) {
        Future.delayed(Duration.zero, () => context.go("/note"));
      }
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Insira o IP ou HOSTNAME do Servidor: "),
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
                      //context.pop();
                      context.go("/note");
                    },
                    child: Text("OK!"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
