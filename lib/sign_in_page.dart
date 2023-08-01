import 'package:flutter/material.dart';
import 'login_form_page.dart'; // Import the newly created login form page

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset(
                '../assets/sign.png',
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 27),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 140,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The only productivity',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'app you need',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(37),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the login form page when "Sign with Email" is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginFormPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(37),
                  ),
                ),
                child: const Text(
                  'Sign with Email',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        // Action for "Sign with Google" button
                      },
                      child: const Text('Google'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        // Action for "Sign with Apple ID" button
                      },
                      child: const Text('Apple ID'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'By Continuing you agree to the Terms and Conditions',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
