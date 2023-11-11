import 'package:bus/home/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.jpeg"),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Enjoy",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  "the world!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "data",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 5, 0, 0).withOpacity(0.7),
                    fontSize: 16,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Ink(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
