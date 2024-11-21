import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
            const Center(
              child: Text(
                  "Password Reset",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
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
                      child: const Text("Reset Password"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.pop(
                      context),
                },
                child: const Text("Back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}