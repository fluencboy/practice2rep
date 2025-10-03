import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🔹 Теперь сразу картинка
            Image.asset(
              "assets/images/img.png",
              height: 300,
            ),

            const SizedBox(height: 20),

            const Text(
              "Welcome To MyCourses",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Enjoy the various best courses we have, choose the category according to your wishes.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () => Navigator.pushNamed(context, '/create'),
              child: const Text("Make Account"),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: const Text(
                "Already Have an Account",
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
