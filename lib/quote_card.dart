import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function()? delete;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 2.0),
            ElevatedButton.icon(
              onPressed: delete,
              label: const Text('Delete'),
              icon: const Icon(Icons.delete),
              style: ElevatedButton.styleFrom(primary: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }
}
