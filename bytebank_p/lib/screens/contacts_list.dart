import 'package:bytebank_p/database/dao/contact_dao.dart';
import 'package:bytebank_p/models/contact.dart';
import 'package:bytebank_p/screens/contact_form.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatefulWidget {
  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  final ContactDao _dao = ContactDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: FutureBuilder<List<Contact>>(
        initialData: [],
        future: _dao.findAll(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [CircularProgressIndicator(), Text('Loading')],
                ),
              );
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              final List<Contact>? contacts = snapshot.data;
              if (contacts != null) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    final contact = contacts[index];
                    return ContactItem(
                        contact: contacts[index],
                        onDeleteClicked: () => _deleteContact(contact),
                        onEditClicked: () => _editContact(contact));
                  },
                  itemCount: contacts.length,
                );
              }
              break;
          }
          return Text('Unknown error');
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ContactForm(new Contact(0, '', 0))))
            .then((value) => setState(() {})),
      ),
    );
  }

  void _deleteContact(Contact contact) => _dao.delete(contact.id).then((value) => setState(() {}));

  void _editContact(Contact contact) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ContactForm(contact)))
        .then((value) => setState(() {}));
  }
}

class ContactItem extends StatefulWidget {
  final Contact contact;
  final VoidCallback onDeleteClicked;
  final VoidCallback onEditClicked;

  const ContactItem(
      {required this.contact, required this.onDeleteClicked, required this.onEditClicked});

  @override
  State<StatefulWidget> createState() => ContactItemState();
}

class ContactItemState extends State<ContactItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          widget.contact.name,
          style: TextStyle(fontSize: 24.0),
        ),
        subtitle: Text(widget.contact.accountNumber.toString(), style: TextStyle(fontSize: 16.0)),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          color: Colors.redAccent,
          onPressed: () => onDelete(context),
        ),
        onTap: () => widget.onEditClicked(),
      ),
    );
  }

  void onDelete(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Confirmar'),
        content: const Text('Deseja realmente excluir esse registro?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancelar'),
            child: const Text('Cancelar'),
          ),
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              widget.onDeleteClicked();
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
