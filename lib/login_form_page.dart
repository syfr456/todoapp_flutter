import 'package:flutter/material.dart';

class LoginFormPage extends StatefulWidget {
  const LoginFormPage({Key? key}) : super(key: key);

  @override
  State<LoginFormPage> createState() => _LoginFormPageState();
}

class _LoginFormPageState extends State<LoginFormPage> {
  double containerPadding = 20.0;
  double containerMargin = 20.0;
  double buttonWidth =
      180.0; // Adjust the width of the "Login" button as desired

  // Create TextEditingController for email and password fields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: kToolbarHeight,
            color: Colors.black,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  'Login Form',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8), // Adjust the spacing as needed
                  Column(
                    children: [
                      _buildInputWithTransparentShadow(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        containerPadding: containerPadding,
                        containerMargin: containerMargin,
                        controller: emailController,
                      ),
                      const SizedBox(
                          height:
                              20), // Adding space between email and password inputs
                      _buildInputWithTransparentShadow(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        obscureText: true,
                        containerPadding: containerPadding,
                        containerMargin: containerMargin,
                        controller: passwordController,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: buttonWidth,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        _loginButtonPressed(context);
                      }, // Use the login button function here
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37),
                        ),
                        // Add any other styling for the button here
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.blue.shade800,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(37),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8), // Adjust the spacing as needed
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle "Forgot your password?" action here
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          'Forgot your password?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputWithTransparentShadow({
    required String labelText,
    required String hintText,
    bool obscureText = false,
    required double containerPadding,
    required double containerMargin,
    required TextEditingController controller,
  }) {
    bool hasText = controller.text.isNotEmpty;

    return Container(
      width: 300, // Adjust the width as needed
      margin: EdgeInsets.symmetric(horizontal: containerMargin),
      padding: EdgeInsets.only(left: containerPadding, right: containerPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
              color: hasText ? Colors.white : Colors.white.withOpacity(0.8),
            ),
            child: Text(
              labelText,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.transparent,
                  blurRadius: 8,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: TextFormField(
              controller: controller,
              obscureText: obscureText,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _loginButtonPressed(BuildContext context) {
    // Validate email and password fields
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      // Navigate to home_page
      Navigator.pushNamed(context, '/home_page');
    } else {
      // Show an error or a message that fields are required
      // For example:
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in both email and password fields.'),
        ),
      );
    }
  }
}
