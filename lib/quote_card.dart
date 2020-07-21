import 'package:flutter/material.dart';
import 'package:fluttertodo/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  width: 300,
                  child: Text(
                    quote.title,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[600],
                    )
                  ),
                ),
                SizedBox(
                  height: 10,                  
                ),
                SizedBox(width: 300,
                  child:Text(
                    quote.content,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[800],
                    )
                  ),
                ),
              ],
            ),
            IconButton(
                  onPressed: delete,
                  icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
