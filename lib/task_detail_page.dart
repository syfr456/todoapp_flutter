import 'package:flutter/material.dart';

class TaskDetailPage extends StatelessWidget {
  final String task;

  const TaskDetailPage({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Detail'),
        backgroundColor:
            Colors.black, // Atur warna latar belakang AppBar menjadi hitam
      ),
      body: Center(
        child: Text(task),
      ),
    );
  }
}
