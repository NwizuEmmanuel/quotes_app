import 'package:flutter/material.dart';
import 'quote_model.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(quote.quoteText),
            const SizedBox(
              height: 10.0,
            ),
            Text(quote.author,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 8.0,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => delete(),
                icon: const Icon(Icons.delete),
                label: const Text("delete"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
