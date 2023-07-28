import 'package:flutter/material.dart';
import 'add_task_page.dart';
import 'task_detail_page.dart';
import 'sign_in_page.dart';
import 'home_page_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<String> tasks = ['Task 1', 'Task 2', 'Task 3'];
  List<Widget> _pages = [];
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePageContent(tasks: tasks),
      AddTaskPage(),
      const TaskDetailPage(task: "Sample Task"),
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

  void navigateToSignInPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignInPage()),
    ).then((isLoggedIn) {
      if (isLoggedIn != null) {
        setState(() {
          _isLoggedIn = isLoggedIn;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
        backgroundColor:
            Colors.black, // Atur warna latar belakang AppBar menjadi hitam
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 0) {
            if (_isLoggedIn) {
              setState(() {
                _currentIndex = index;
              });
            } else {
              navigateToSignInPage();
            }
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        items: const [
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
        backgroundColor: Colors
            .black, // Atur warna latar belakang BottomNavigationBar menjadi hitam
      ),
    );
  }
}
