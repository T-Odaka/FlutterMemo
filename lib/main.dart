import 'package:flutter/material.dart';
import 'package:fluttertodo/quote.dart';
import 'package:fluttertodo/quote_card.dart';
import 'package:fluttertodo/addTask.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => QuateList(),
    '/addTask' : (context) => AddTask(),
  },
));

class QuateList extends StatefulWidget {
  @override

  _QuateListState createState() => _QuateListState();
}

class _QuateListState extends State<QuateList> {

    List<Quote> quotes = [
    Quote(content: 'this is used for your task manegement',title: 'Description'),
    Quote(content: 'push the trash icons delete this card',title: 'How to'),
    Quote(content: 'push the bottom blue icons move page and creating your task',title: 'Add task'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Memo'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: SingleChildScrollView(
              child: Column(
          children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete:() {
              setState((){
                quotes.remove(quote);
              });
            },
          )).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          // quotes.map((quote) => AddTask(
          //   quote: quote,
          //   delete:() {
          //     setState((){
          //       quotes.remove(quote);
          //     });
          //   },
          //   add:(){
          //     setState(() {
          //       quotes.add(quote);
          //     });
          //   },
          // ));
          final result = await Navigator.pushNamed(context,'/addTask');
            if(result != null){
              setState(() {
              quotes.add(result);  
            });
          }
        },
        child:Icon(Icons.add),
      ),
    );
  }
}
