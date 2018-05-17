import 'dart:async';

class Contact {
  final String fullname;
  final String email;

  const Contact({this.fullname, this.email});

  Contact.fromMap(Map<String, dynamic> map) :
      fullname = '${map['name']['first']} ${map['name']['last']}',
      email = map['email'];
}

abstract class ContactRepository {
  Future<List<Contact>> fetch();
}


class FetchDataException implements Exception {
  String _message;

  FetchDataException(this._message);

  String toString() {
    return 'Exception: $_message';
  }
}

