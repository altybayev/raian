import '../module/contacts/models/contact.dart';
import '../module/contacts/repositories/contact_mock.dart';
import '../module/contacts/repositories/contact_repository.dart';

enum Flavor {
  MOCK,
  PRO
}

// Simple DI
class Injector {
  static final Injector _singleton = new Injector._internal();
  static Flavor _flavor;

  static void configure(Flavor flavor) {
    _flavor = flavor;
  }

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  ContactRepository get contactRepository {
    switch(_flavor) {
      case Flavor.MOCK: return new MockContactRepository();
      default:
        return new RandomUserRepository();
    }
  }
}