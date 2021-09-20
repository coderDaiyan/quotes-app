// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'quote.dart';

class QuoteCard extends StatelessWidget {
  // const QuoteCard({
  //   Key? key,
  // }) : super(key: key);

  final Quote quote;
  final VoidCallback delete;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('${quote.text}',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600])),
              SizedBox(
                height: 6,
              ),
              Text('${quote.author}',
                  style: TextStyle(fontSize: 14, color: Colors.grey[800])),
              SizedBox(
                height: 8,
              ),
              TextButton.icon(
                style: TextButton.styleFrom(primary: Colors.grey[900]),
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('Delete quotes'),
              )
            ]),
      ),
    );
  }
}
