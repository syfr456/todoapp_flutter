// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  int taskCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24.0),
            _buildInputField(
              controller: _taskController,
              labelText: 'Task',
            ),
            const SizedBox(height: 16.0),
            _buildInputField(
              controller: _categoryController,
              labelText: 'Category',
            ),
            const SizedBox(height: 32.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(37.0),
              ),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    taskCount++; // Increment task count
                  });
                  Navigator.pop(
                    context,
                    {
                      'task': _taskController.text,
                      'category': _categoryController.text,
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Set your desired button color
                  minimumSize: const Size.fromHeight(
                      40.0), // Set the minimum height of the button
                ),
                child: const Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String labelText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 8.0),
        TextFormField(
          controller: controller,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            filled: true,
            fillColor: const Color.fromRGBO(206, 206, 206, 0.425),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15.0),
            ),
            hintText: 'Enter $labelText',
            hintStyle: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
