import 'package:flutter/material.dart';
import 'sign_in_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isNotificationEnabled = false;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[700], // Grey background color for circle
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 80.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Erlich Bachman', // Updated name
              style: TextStyle(
                color: Colors.white,
                fontSize: 36.0, // Updated font size
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'erlichbachman@piedpiper.com', // Updated email
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0, // Updated font size
              ),
            ),
            const SizedBox(height: 24.0),
            Center(
              child: Container(
                width: 100.0, // Width of the button
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(37.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Implement your edit profile logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.transparent, // Set transparent background color
                    minimumSize: const Size.fromHeight(50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(37.0),
                    ),
                  ),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0), // Spacing
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
            ),
            const SizedBox(height: 8.0), // Spacing
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[700]!.withOpacity(
                    0.5), // Grey card background color with opacity
                borderRadius:
                    BorderRadius.circular(15.0), // Corner radius of the card
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Turn On Notifications',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  // Toggle switch to enable/disable notifications
                  Switch(
                    value: isNotificationEnabled,
                    onChanged: (value) {
                      // Handle the toggle switch value change
                      isNotificationEnabled = value;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0), // Spacing
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Invite Link',
                style: TextStyle(
                  color: Colors.grey, // Updated to grey color
                  fontSize: 14.0,
                ),
              ),
            ),
            const SizedBox(height: 8.0), // Spacing
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[700]!.withOpacity(
                    0.5), // Grey card background color with opacity
                borderRadius:
                    BorderRadius.circular(15.0), // Corner radius of the card
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Invite People',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your invite logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(37.0),
                      ),
                    ),
                    child: const Text(
                      'Invite',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0), // Spacing
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const SignInPage(), // Navigates to the login page
                  ),
                );
              },
              child: const Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
