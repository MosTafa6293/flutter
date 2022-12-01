import 'package:flutter/material.dart';

class ProviderRegisterPage extends StatelessWidget {
  const ProviderRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF141C24),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Provider Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter username',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter ID number',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter email',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Confirm Password',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.pop(context)
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      minimumSize: const Size.fromHeight(75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                      )
                    ),
                    child: const Text('Register'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
