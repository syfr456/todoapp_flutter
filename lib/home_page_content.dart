import 'package:flutter/material.dart';
import 'task_detail_page.dart';

class HomePageContent extends StatelessWidget {
  final List<String> tasks;

  const HomePageContent({super.key, required this.tasks});

  void navigateToTaskDetailPage(BuildContext context, String task) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskDetailPage(task: task),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(tasks[index]),
          onTap: () {
            navigateToTaskDetailPage(context, tasks[index]);
          },
        );
      },
    );
  }
}
