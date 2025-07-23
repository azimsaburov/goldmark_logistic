import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Expanded(
                child: Row(
                  children: [
                    Column(children: [Text('Alexandr Testov'), Text('Super user')]),
                    CircleAvatar(backgroundColor: Colors.green,), 
                  ],
                ),
              ),
            ),
            Placeholder(),
          ],
        ),
      ),
    );
  }
}
