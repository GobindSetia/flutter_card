import 'package:flutter/material.dart';
import "quote.dart";
import "quotes_card.dart";

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
   Quote(text:"Be Yourself", author: "Oscar wilde"),
   Quote(text:"Except my Genius", author: "oscar wilde"),
   Quote(text:"The truth is rarely pure", author: "Oscar wilde"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote)=>QuoteCard(
            quote: quote,
          delete: ()=> setState((){
            quotes.remove(quote);
          })
        )).toList(),
      ),
    );
  }
}

