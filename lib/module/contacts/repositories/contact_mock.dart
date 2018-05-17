import 'dart:async';
import '../models/contact.dart';

class MockContactRepository extends ContactRepository {
  @override
  Future<List<Contact>> fetch() {
    return new Future.value(kContacts);
  }
}


const kContacts = const <Contact>[
  const Contact(
    fullname: 'Romain Hoogmoed',
    email: 'romain.hoogmoed@example.com',
  ),
  const Contact(
    fullname: 'Sanzhar Altybayev',
    email: 's.altybayev@gmail.com',
  ),
];