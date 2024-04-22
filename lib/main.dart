import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "ListView",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index]),
            leading: Icon(Icons.face),
            trailing: Icon(Icons.phone),
            subtitle: Text("Works at ${companies[index]}"),
            onTap: () {
              print("${users[index]} tapped");
            },
            onLongPress: () {
              print("Calling ${users[index]}...");
            },
          );
        },
      ),
    ),
  ));
}

final List<String> users = ["Tom", "Bob", "Sam", "Mike"];
final List<String> companies = ["Google", "Microsoft", "Apple", "JetBrains"];
