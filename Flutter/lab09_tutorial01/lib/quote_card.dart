import 'package:flutter/material.dart';
import 'package:lab09_tutorial01/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30, 20, 30),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurpleAccent[300]
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.deepPurpleAccent[100]
              ),
            ),
            SizedBox(height: 8.0),
            TextButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('Delte Quote'),
            )

          ],
        ),
      ),
    );
  }
}