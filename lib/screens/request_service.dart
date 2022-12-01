import 'package:flutter/material.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF141C24),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your service request',
                    filled: true,
                    fillColor: Color(0xffd9d9d9),
                    contentPadding: EdgeInsets.only(top: 100, left: 20)
                  ),
                  minLines: 1,
                  maxLines: 6,
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
                  child: const Text('Request'),
                ),
              ),
            ],
          ),
        ));
  }
}
