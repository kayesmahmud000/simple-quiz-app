import 'library_author.dart';

class LibraryBook {
  int _id;
  String _title;
  LibraryAuthor _libraryAuthor;

  LibraryBook(this._id, this._title, this._libraryAuthor);

  int get id => _id;
  String get title => _title;
  LibraryAuthor get libraryAuthor => _libraryAuthor;

  @override
  String toString() {
    return '${_title} ID is : ${_id}  ';
  }

}