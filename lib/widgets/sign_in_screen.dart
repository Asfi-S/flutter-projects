import 'package:flutter/material.dart';
import './reset_password_screen.dart';
import './sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Логін',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Пароль',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Sign Up button
            SizedBox(
              height: 48,
              child: TextButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  )
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blueAccent,
                  side: const BorderSide(
                    color: Color.fromRGBO(200, 202, 203, 0.5),
                  ),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                  ),
                ),
                child: const Text("Sign up"),
              ),
            ),
            const SizedBox(height: 16),
            // Login and Reset password buttons in one row
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: TextButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              title: Text('Message'),
                              content: Text("Need to implement"),
                            );
                          },
                        )
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(45, 84, 130, 1),
                        foregroundColor: Colors.white,
                        shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      child: const Text("Login"),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordScreen(),
                          ),
                        )
                      },
                      child: const Text("Reset password"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}