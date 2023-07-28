import 'package:flutter/material.dart';

class AddTaskPage extends StatelessWidget {
  final TextEditingController _taskController = TextEditingController();

  AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
        backgroundColor:
            Colors.black, // Atur warna latar belakang AppBar menjadi hitam
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _taskController,
              decoration: const InputDecoration(labelText: 'Task'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, _taskController.text);
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
