import 'package:bytebank_p/database/dao/contact_dao.dart';
import 'package:bytebank_p/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  final Contact _contact;
  ContactForm(this._contact);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final ContactDao _dao = ContactDao();

  TextEditingController _idController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _accountNumberController = TextEditingController();
  String _buttonText = '';

  @override
  void initState() {
    super.initState();
    if(widget._contact.id != 0){
      _idController.text = widget._contact.id.toString();
      _nameController.text = widget._contact.name;
      _accountNumberController.text = widget._contact.accountNumber.toString();
      _buttonText = 'Edit';
    } else {
      _buttonText = 'Create';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              enabled: false,
              controller: _idController,
              decoration: InputDecoration(labelText: 'Código'),
              style: TextStyle(fontSize: 24.0),
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Full name'),
              style: TextStyle(fontSize: 24.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _accountNumberController,
                decoration: InputDecoration(labelText: 'Account number'),
                style: TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                child: ElevatedButton(
                  child: Text(_buttonText),
                  onPressed: () => handleButtonClick(),
                ),
                width: double.maxFinite,
              ),
            )
          ],
        ),
      ),
    );
  }

  handleButtonClick() {
    int? id = int.tryParse(_idController.text);
    if(id == null) id = 0;
    final String name = _nameController.text;
    final int? accountNumber = int.tryParse(_accountNumberController.text);

    final Contact contact = Contact(id, name, accountNumber!);
    if(id != 0) {
      _dao.update(contact).then((id) => Navigator.pop(context));
    } else {
      _dao.save(contact).then((id) => Navigator.pop(context));
    }
  }
}
