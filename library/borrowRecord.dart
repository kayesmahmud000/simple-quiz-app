import 'books.dart';
import 'user.dart';

class BorrowRecord {
  Book _book;
  User _user;

  BorrowRecord(this._book, this._user);

  Book get book => _book;
  User get user =>_user;

}