import 'books.dart';
import 'borrowRecord.dart';
import 'user.dart';

class Library {
  final List<Book> _books = [];
  final List<User> _users = [];
  final List<BorrowRecord> _borrowRecord= [];

  void addBook(Book book , ){
    _books.add(book);
     print('Author ${book.author.name} added book: ${book.title}');
  }

  void addUser(User user){
    _users.add(user);
    print('user added ${user.name}');
  }

  Book ? findBookById(int id){
    try{
      return _books.firstWhere((book)=> book.id ==id);
    }catch(e){
      return null;
    }
  }

 User? findUserById(int id){
  try{
    return _users.firstWhere((user)=> user.id== id);

  }catch(e){
    return null;
  }
  }

void borrowBook (int userId, int bookId){
  final user = findUserById(userId);
  final book = findBookById(bookId);

  if(user == null){
    print('user not found');
    return;
  }
  if(book == null){
    print('book not found');
    return;
  }

  for( var record in _borrowRecord){
    if(record.book.id == bookId){
      print('This Book Is Already Borrowed ');
      return;
    }
  }

  final borrowRecord = BorrowRecord(book, user);
  _borrowRecord.add(borrowRecord);

  print('${user.name} borrowed ${book.title}');
}

void returnBook (int bookId, int userId){
  final book = findBookById(bookId);
  final user = findUserById(userId);

  if(book == null){
    print('Book is not found');
    return;
  } 

  if(user == null){
    print('User is not found ');
    return;
  }

  BorrowRecord? removeRecord;

  for( var record in _borrowRecord){
    if(record.book.id == bookId && record.user.id == userId){
      removeRecord = record;
      break;
    }
  }

  if( removeRecord != null){
    _borrowRecord.remove(removeRecord);
    print('${user.name} returned ${book.title} ');  
  }else{
    print('${book.title} was not borrowed by ${user.name}');
  }


}

void displayAvailableBook (){
  print('\n ---Available Book---');

  final borrowedBookIds = _borrowRecord.map((record)=> record.book.id );

  for(var book in _books){
    if(!borrowedBookIds.contains(book.id)){
      print('${book.title} by ${book.author.name}');
    }
  }
}

void displayBorrowedBook(){

  if(_borrowRecord.isEmpty){
    print('No Book Borrowed');
    return;
  }

  for( var record in _borrowRecord){
    print('${record.book.title} Borrowed by ${record.user.name}');
  }
}

}