import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/controllers/api.dart';

class NotesView extends ConsumerStatefulWidget {
  const NotesView({super.key});

  @override
  ConsumerState<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends ConsumerState<NotesView> {
  late AsyncValue noteList;

  void setData() {
    noteList = ref.watch(apiNotesProvider);
  }

  bool isNotNull(var aux) {
    if (aux != null) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    setData();
    return noteList.when(
      error: (err, stack) => Center(child: Text('Error $err')),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (dataList) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: dataList!.length as int,
                  (context, index) {
                    return InkWell(
                      child: Container(
                        color: Theme.of(context).colorScheme.secondary,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Text(
                                    "${dataList[index].title}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                                  ),
                                ),
                                Text(
                                  isNotNull(dataList[index].created)
                                      ? "${dataList[index].created}"
                                      : "",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                                ),
                                const VerticalDivider(
                                  thickness: 1,
                                  width: 5,
                                ),
                                Text(
                                  isNotNull(dataList[index].deadLine)
                                      ? "${dataList[index].deadLine}"
                                      : "",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                                ),
                              ],
                            ),
                            const Divider(thickness: 1, height: 1),
                            Text(
                              "${dataList[index].desc}",
                              style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 500,
                  mainAxisExtent: 150,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 4.0,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
