import 'package:flutter/material.dart';
import 'quote_model.dart';
import 'quote_card.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Quotes(),
    );
  }
}

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(author: "Jesus Christ", quoteText: "Heavens help those who help themselves."),
    Quote(author: "Jesus Christ", quoteText: "No food for a lazy man."),
    Quote(author: "Jesus Christ", quoteText: "You reap what you sow."),
    Quote(author: "King Solomon", quoteText: "The fear of God is the beginning of wisdom."),
  ];

  void deleteQuote(Quote quote){
    setState(() {
      quotes.remove(quote);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes'),
        centerTitle: true,
        elevation: 0.8,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes
            .map(
              (quote) => QuoteCard(quote: quote, delete: ()=> deleteQuote(quote),)
            )
            .toList(),
      ),
    );
  }
}
