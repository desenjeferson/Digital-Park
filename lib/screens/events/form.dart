import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:DigitalPark/models/event.dart';

class EventForm extends StatefulWidget {
  @override
  _EventFormState createState() => _EventFormState();
}

class _EventFormState extends State<EventForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nameControllerImpput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Cadastro de eventos'),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'images/logo.png',
                width: 40,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Fteste'),
              style: TextStyle(fontSize: 24),
              keyboardType: TextInputType.text,
            ),
            TextField(
              controller: _nameControllerImpput,
              decoration: InputDecoration(labelText: 'Fteste'),
              style: TextStyle(fontSize: 24),
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              width: double.maxFinite,
              child: RaisedButton(
                child: Text('create'),
                onPressed: () {
                  final String name = _nameController.text;
                  final int numero = int.tryParse(_nameControllerImpput.text);
                  final Event newEvent = Event(0, name, numero);
                  Navigator.pop(context, newEvent);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
