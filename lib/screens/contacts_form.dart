import 'package:bytebank_v2/components/TextoBox.dart';
import 'package:bytebank_v2/models/Contact.dart';
import 'package:flutter/material.dart';

const String _tituloAppBar = "Formulário de Contatos";

class ContactForm extends StatefulWidget {
  @override
  _ContactForm createState() => _ContactForm();
}

class _ContactForm extends State<ContactForm> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerAccountNumber =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextoBox(
                controller: _controllerName,
                rotulo: "Full Name",
                dica: "Jore",
              ),
              TextoBox(
                controller: _controllerAccountNumber,
                rotulo: "Account Number",
                dica: "0000",
                keyType: TextInputType.number,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text("Confirm"),
                  onPressed: () => _confirmContact(_controllerName.text,
                      _controllerAccountNumber.text, context),
                  padding: EdgeInsets.all(0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _confirmContact(
      final String fullName, final String accountNumber, BuildContext context) {
    final String _name = fullName;
    final int _accountNumber = int.tryParse(accountNumber);

    if (_name != null && _accountNumber != null) {
      final newContact = Contact(_name, _accountNumber);
      print(newContact.toString());
      Navigator.pop(context, newContact);
    }
  }
}
