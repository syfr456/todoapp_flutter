// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'add_task_page.dart';
import 'sign_in_page.dart';
import 'profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SignInPage(),
        '/home_page': (context) => const HomePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class HomePageContent extends StatelessWidget {
  final List<String> tasks;

  const HomePageContent({Key? key, required this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double taskProgressPercentage = 50.0;
    int totalTasks = 10;
    int completedTasks = 5;
    String categoryTitle1 = 'Home Work';
    String categoryTitle2 = 'Prepare';
    String categoryTitle3 = 'Work';
    String categoryTitle4 = 'Urgent';
    int newTasks1 = 3;
    int newTasks2 = 2;
    int newTasks3 = 9;
    int newTasks4 = 5;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hello',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Card(
              color: const Color.fromRGBO(
                  206, 206, 206, 0.425), // Black with 100% opacity
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Daily Progress',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.menu_book,
                          color: Colors.white, // Change icon color to white
                          size: 24,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Here you can see your task progress',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${taskProgressPercentage.toStringAsFixed(0)}%',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        LinearProgressIndicator(
                          value: taskProgressPercentage / 100,
                          color: Colors.blue,
                          backgroundColor: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Categories',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Card(
                  color: const Color.fromRGBO(206, 206, 206, 0.425),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.menu_book,
                              color: Colors.white,
                              size: 24,
                            ),
                            Text(
                              '$newTasks1 New Tasks',
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          categoryTitle1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$completedTasks / $totalTasks tasks',
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                            const SizedBox(height: 8),
                            LinearProgressIndicator(
                              value: taskProgressPercentage / 100,
                              color: Colors.blue,
                              backgroundColor: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Card(
                  color: const Color.fromRGBO(206, 206, 206, 0.425),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.archive,
                              color: Colors.white,
                              size: 24,
                            ),
                            Text(
                              '$newTasks2 New Tasks',
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          categoryTitle2,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$completedTasks / $totalTasks tasks',
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                            const SizedBox(height: 8),
                            LinearProgressIndicator(
                              value: taskProgressPercentage / 100,
                              color: const Color(0xFFffab1e), // Yellow color
                              backgroundColor: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Card(
                  color: const Color.fromRGBO(206, 206, 206, 0.425),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 24,
                            ),
                            Text(
                              '$newTasks3 New Tasks',
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          categoryTitle3,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$completedTasks / $totalTasks tasks',
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                            const SizedBox(height: 8),
                            LinearProgressIndicator(
                              value: taskProgressPercentage / 100,
                              color: Colors.purple, // Purple color
                              backgroundColor: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Card(
                  color: const Color.fromRGBO(206, 206, 206, 0.425),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 24,
                            ),
                            Text(
                              '$newTasks4 New Tasks',
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          categoryTitle4,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$completedTasks / $totalTasks tasks',
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                            const SizedBox(height: 8),
                            LinearProgressIndicator(
                              value: taskProgressPercentage / 100,
                              color: Colors.green, // Green color
                              backgroundColor: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  int completedTasks = 5;
  int totalTasks = 10;
  int _currentIndex = 0;
  List<String> tasks = [];
  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePageContent(tasks: tasks),
      AddTaskPage(),
      const ProfilePage(), // Add the profile page here
    ];
  }

  void navigateToProfilePage() {
    setState(() {
      _currentIndex = 2; // Set the index to the profile page
    });
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

  @override
  Widget build(BuildContext context) {
    double taskProgressPercentage = (completedTasks / totalTasks) * 100;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        automaticallyImplyLeading: false, // Remove the back button
        actions: [
          IconButton(
            onPressed: () {
              // Handle Search icon click
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              navigateToProfilePage(); // Navigates to profile page
            },
            icon: const Icon(Icons.person),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: _pages[_currentIndex],
      bottomNavigationBar: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 60),
              painter: MyPainter(index: _currentIndex),
            ),
          ),
          BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "", // Empty label to hide the text
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "", // Empty label to hide the text
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "", // Empty label to hide the text
              ),
            ],
            selectedItemColor:
                Colors.white, // Change the selected item color to blue
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.transparent, // Set to transparent
            selectedFontSize: 14,
            unselectedFontSize: 14,
            showSelectedLabels: false, // Hide the labels for the selected item
            showUnselectedLabels:
                false, // Hide the labels for the unselected items
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final int index;

  MyPainter({required this.index});

  @override
  void paint(Canvas canvas, Size size) {
    if (index >= 0 && index <= 2) {
      final Paint paint = Paint()
        ..color = Colors.blue.withOpacity(0.6)
        ..style = PaintingStyle.fill;

      // Calculate the radius based on the width of the BottomNavigationBar
      final double radius = size.width / 20;

      // Draw a circle behind the selected icon
      canvas.drawCircle(
        Offset(size.width * (index + 0.5) / 3, size.height / 2),
        radius,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
