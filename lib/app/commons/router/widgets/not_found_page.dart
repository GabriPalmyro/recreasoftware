import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Found'),
      ),
      body: const Center(
        child: Text(
          'Page Not Found',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
