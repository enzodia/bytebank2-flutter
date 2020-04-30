import 'package:bytebank_v2/models/Contact.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final Contact _contact;

  CardItem(this._contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.people),
        title: Text(
          _contact.fullName.toString(),
          style: TextStyle(fontSize: 24.0),
        ),
        subtitle: Text(
          _contact.accountNumber.toString(),
          style: TextStyle(fontSize: 14.0),
        ),
      ),
    );
  }
}
