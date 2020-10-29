import 'package:flutter/material.dart';

void main() {
  List<String> notes = [
    "Test",
    "Test 2",
    "Test 3",
    "Test 4",
    "Test 5",
  ];

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Simple ListView"),
      ),
      body: Container(
        color: Colors.white10,
        padding: EdgeInsets.all(16.0),
        child: HomePage(notes)
      ),
    ),
  ));
}

class ListPage extends StatelessWidget {
  final List<String> notes;

  ListPage(this.notes);

  return ListView.builder(
  itemBuilder: (context, idx) {
    return Text(notes[idx]);
  }
};

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, pos) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
              child: Text(notes[pos], style: TextStyle(
                fontSize: 18.0,
                height: 1.6,
              ),),
            ),
          )
        );

      },
    );
  }
}