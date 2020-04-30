import 'package:bytebank_v2/components/CardItem.dart';
import 'package:bytebank_v2/models/Contact.dart';
import 'package:bytebank_v2/screens/contacts_form.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatefulWidget {
  final List<Contact> _contactList = List();

  @override
  _ContactList createState() => _ContactList();
}

class _ContactList extends State<ContactsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contacts",
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: widget._contactList.length,
        itemBuilder: (context, ind){
          final contact = widget._contactList[ind];
          return CardItem(contact);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Contact> future = Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ContactForm(),
            ),
          );

          future.then((contact) => _updateState(contact));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _updateState(Contact contact){
    if (contact != null) {
      setState(() {
        widget._contactList.add(contact);
      });
    }
  }
}
