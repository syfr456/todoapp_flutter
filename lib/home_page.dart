import 'package:flutter/material.dart';
import 'task_detail_page.dart';
import 'add_task_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<String> tasks = ['Task 1', 'Task 2', 'Task 3'];
  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePageContent(tasks: tasks),
      AddTaskPage(),
      TaskDetailPage(task: "Sample Task"),
    ];
  }

  void navigateToAddTaskPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddTaskPage()),
    ).then((newTask) {
      if (newTask != null) {
        setState(() {
          tasks.add(newTask);
        });
      }
    });
  }

  void navigateToTaskDetailPage(String task) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TaskDetailPage(task: task)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Task List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Task',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: 'Task Detail',
          ),
        ],
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  final List<String> tasks;

  HomePageContent({required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(tasks[index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TaskDetailPage(task: tasks[index]),
              ),
            );
          },
        );
      },
    );
  }
}
