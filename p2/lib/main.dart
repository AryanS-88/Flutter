import 'package:flutter/material.dart';
import 'package:p2/quote.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote('quote', 'authour'),
    Quote('quote', 'authour'),
    Quote('quote', 'authour')
  ];

  Widget quoteTemplate(quote) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: <Widget>[
              Text(
                quote.text,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 71, 71, 71),
                ),
              ),
              const SizedBox(height: 6.0),
              Text(
                quote.authour,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ])));
  }

  List<String> authours = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Gyaan bhari baatein'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ));
  }
}
