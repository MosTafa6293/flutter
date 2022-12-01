import 'package:clown/screens/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Email',
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
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: () => {Navigator.pop(context)},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        minimumSize: const Size.fromHeight(75),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    child: const Text('Login'),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (_) => RegisterPage()
                      ));
                    },
                  style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.secondary
                  ),
                    child: const Text("Don't Have an account? Register"),
                )
              ],
            ),
          ),
        ));
  }
}
