import 'package:flutter/material.dart';
import 'package:task_manager/views/task_create_view.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task List"),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text("ニンジン"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("タマネギ"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("ジャガイモ"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("カレールー"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const TaskCreatePage();
            }),
          );
        },
        child: const Icon(Icons.add),
        tooltip: "add task button",
      ),
    );
  }
}
