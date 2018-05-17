import 'models/contact.dart';
import '../../injection/dependency_injection.dart';

abstract class ContactListViewContract {
  void onLoadContactsComplete(List<Contact> items);
  void onLoadContactsError();
}

// presenter
class ContactListPresenter {
  ContactListViewContract _view;
  ContactRepository _repository;

  ContactListPresenter(this._view) {
    _repository = new Injector().contactRepository;
  }

  void loadContacts() {
    assert(_view != null);

    _repository.fetch()
      .then((contacts) => _view.onLoadContactsComplete(contacts))
      .catchError((onError) {
        print(onError);
        _view.onLoadContactsError();
      });
  }
}