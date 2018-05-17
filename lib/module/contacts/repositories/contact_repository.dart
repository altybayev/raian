import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/contact.dart';

class RandomUserRepository implements ContactRepository {
  static const _kRandomUserUrl = 'http://api.randomuser.me/?results=15';
  final JsonDecoder _decoder = new JsonDecoder();

  @override
  Future<List<Contact>> fetch() {
    return http.get(_kRandomUserUrl)
        .then((http.Response response) {
          final String jsonBody = response.body;
          final int statusCode = response.statusCode;

          if (statusCode < 200 || statusCode >= 300 || jsonBody == null) {
            throw new FetchDataException('Error while getting contacts [StatusCode: $statusCode, Error: error]');
          }

          final contactsContainer = _decoder.convert(jsonBody);
          final List contacts = contactsContainer['results'];

          return contacts.map((contact) => new Contact.fromMap(contact)).toList();

        });
  }
}