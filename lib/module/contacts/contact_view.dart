import 'package:flutter/material.dart';
import 'models/contact.dart';
import 'contact_presenter.dart';

// page
class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Contacts'),
      ),
      body: new ContactList(),
    );
  }
}

// list
class ContactList extends StatefulWidget {
  ContactList({Key key}) : super(key: key);

  @override
  _ContactListState createState() => new _ContactListState();
}

// list's state
class _ContactListState extends State<ContactList> implements ContactListViewContract {
  ContactListPresenter _presenter;
  List<Contact> _contacts;

  bool _isSearching;

  _ContactListState() {
    _presenter = new ContactListPresenter(this);
  }

  @override
  void initState() {
    super.initState();
    _isSearching = true;
    _presenter.loadContacts();
  }

  @override
  void onLoadContactsError() {
    // TODO: show error message
  }

  @override
  void onLoadContactsComplete(List<Contact> items) {
    setState(() {
      _contacts = items;
      _isSearching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget widget;

    if (_isSearching) {
      widget = new Center(
        child: new Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: new CircularProgressIndicator(),
        ),
      );
    } else {
      widget = new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: _buildContactList(),
      );
    }

    return widget;
  }

  // build list
  List<_ContactListItem> _buildContactList() {
    return _contacts.map((contact) => new _ContactListItem(contact)).toList();
  }
}

// item
class _ContactListItem extends ListTile {
  _ContactListItem(Contact contact) :
      super(
        leading: new CircleAvatar(child:  new Text(contact.fullname[0])),
        title: new Text(contact.fullname),
        subtitle: new Text(contact.email),
      );
}