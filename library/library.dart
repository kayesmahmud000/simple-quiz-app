import 'author.dart';
import 'books.dart';
import 'user.dart';

class Library {
  final List<Book> _books = [];
  final List<User> _users = [];

  void addBook(Book book , Author author){
    _books.add(book);
     print('Author ${author.name} added book: ${book.title}');
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


void displayAvailableBook (){
  print('\n ---Available Book---');

  for(var book in _books.where((b) => b.isAvailable)){
    print(book.title);

  }

}
}