import 'package:flutter/material.dart';

final List<String> users = ['Tom', 'Bob', 'Sam', 'Mike'];
final List<String> companies = ['Google', 'Microsoft', 'Apple', 'Jetbrains'];
// 1 attempt
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(users[index], style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.face),
            trailing: Icon(Icons.phone),
            subtitle: Text('Works in ${companies[index]}'),
          );
        },
      ),
      appBar: AppBar(
        title: Text('METANIT.COM'),
      ),
    ),
  ));
}
