// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: QuotesList()));
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
        author: 'Chris Pine',
        text:
            "Programming isn't about what you know; it's about what you can figure out."),
    Quote(
        author: 'Dennis Ritchie',
        text:
            "The only way to learn a new programming language is by writing programs in it."),
    Quote(
        author: 'Burt Rutan',
        text: "Testing leads to failure, and failure leads to understanding."),
  ];

  Widget quoteTemplate(quote, delete) {
    return QuoteCard(
      quote: quote,
      delete: delete,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0,
        ),
        body: Column(
            children: quotes.map((quote) {
          return quoteTemplate(quote, () {
            setState(() {
              quotes.remove(quote);
            });
          });
        }).toList()));
  }
}
