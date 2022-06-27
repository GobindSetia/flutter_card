import 'package:flutter/material.dart';
import "quote.dart";

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final void Function() delete;
  // ignore: use_key_in_widget_constructors
  const QuoteCard({
    required this.quote,
    required this.delete
  });


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
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),

            ),
            const SizedBox(height: 6),
            Text(
              quote.author,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 8),
            TextButton.icon(
                onPressed: delete,
                label: const Text("Delete"),
                icon: const Icon(Icons.delete)
            )
          ],
        ),
      ),
    );
  }
}


