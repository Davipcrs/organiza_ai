import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/controllers/api.dart';
import 'package:organiza_ai/model/todo.dart';
import 'package:organiza_ai/views/widgets/todo_widgets/todo_element.dart';

class TodoWidget extends ConsumerStatefulWidget {
  const TodoWidget({super.key});

  @override
  ConsumerState<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends ConsumerState<TodoWidget> {
  late AsyncValue todoList;

  void setData() {
    todoList = ref.watch(apiTodoProvider);
  }

  @override
  Widget build(BuildContext context) {
    setData();
    return todoList.when(
      error: (err, stack) => Center(child: Text('Error $err')),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (dataList) {
        return SizedBox(
          width: MediaQuery.of(context).size.width - 60,
          child: ListView.builder(
            itemBuilder: (context, index) {
              print(dataList[index]);
              return ListTile(
                title: todoElement(context, dataList[index] as Todo),
              );
            },
            itemCount: dataList!.length as int,
          ),
        );
      },
    );
  }
}
