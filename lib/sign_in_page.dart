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
          mainAxisAlignment: MainAxisAlignment.start,
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
              width: 321,
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
              width: 321,
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
                    padding: const EdgeInsets.only(left: 28, right: 14),
                    child: TextButton(
                      onPressed: () {
                        // Aksi untuk tombol "Sign with Google" disini
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        minimumSize: const Size(0, 48),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.transparent,
                        side: BorderSide(
                          color: Colors.white.withOpacity(1.0),
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37),
                        ),
                      ),
                      child: const Text('Google'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14, right: 28),
                    child: TextButton(
                      onPressed: () {
                        // Aksi untuk tombol "Sign with Apple ID" disini
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        minimumSize: const Size(0, 48),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.transparent,
                        side: BorderSide(
                          color: Colors.white.withOpacity(1.0),
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37),
                        ),
                      ),
                      child: const Text('Apple ID'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'By continuing you agree to the terms and conditions',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
