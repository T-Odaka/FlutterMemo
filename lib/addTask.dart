import 'package:flutter/material.dart';
import 'package:fluttertodo/quote.dart';

class AddTask extends StatefulWidget {
  
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {


  @override
  Widget build(BuildContext context) {

    final titleController = TextEditingController();
    final commentController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Add Task'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Card(
        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: 'Memo title',
                ),
              ),
              TextFormField(
                controller: commentController,
                decoration: const InputDecoration(
                  labelText: 'Comment',
                ),
              ),
              FlatButton.icon(
                padding: EdgeInsets.all(10),
                onPressed:(){
                  Navigator.of(context).pop(Quote(title: titleController.text,content: commentController.text));
                },
                icon: Icon(Icons.add),
                label: Text('Add')  
              ),
            ],
          ),
        ),
      ),
    );
  }
}