class Book {
  int _id;
  String _title;
  String _author;
  bool _isAvailable;

  Book(this._id, this._title, this._author) : _isAvailable = true;

  int get id => _id;
  String get title => _title;
  String get author => _author;
  bool get isAvailable => _isAvailable;

  void borrowBook(){
    if(_isAvailable){
      _isAvailable = false;
      print('${_title} has been borrowed');
    }else{
      print('${_title} is currently unavailable');
    }
  }

  void returnBook (){
    if(!_isAvailable){
      _isAvailable = true;
      print('${_title}has been returned');
    }else{
      print('${_title} war not borrowed in the first place');
    }
  }

  @override
  String toString() {

    return 'Title: ${_title} , Author : $_author, Id: $_id , Available: $isAvailable';
  }
}