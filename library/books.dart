import 'author.dart';

class Book {
  int _id;
  String _title;
  Author _author;

  Book(this._id, this._title, this._author) ;

  int get id => _id;
  String get title => _title;
  Author get author => _author;


  @override
  String toString() {

    return 'Title: ${_title} , Author : ${_author.name}, Id: $_id ';
  }
}