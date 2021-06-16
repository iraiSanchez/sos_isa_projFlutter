import 'package:flutter/material.dart';

class TellUteis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Polícia Militar'),
              subtitle: Text('190'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Disque Denúncia'),
              subtitle: Text('181'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Polícia Civil'),
              subtitle: Text('197'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Bombeiros'),
              subtitle: Text('193'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Procon:'),
              subtitle: Text('151'),
            ),
          ],
        ),
      ),
    );
  }
}