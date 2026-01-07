import 'library_book.dart';
import 'library_user.dart';


class LibraryBorrowRecord {
  LibraryBook _libraryBook;
  LibraryUser _libraryUser;

  LibraryBorrowRecord(this._libraryBook, this._libraryUser);

  LibraryBook get libraryBook => _libraryBook;
  LibraryUser get libraryUser => _libraryUser;
  

}