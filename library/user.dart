import 'books.dart';
import 'person.dart';

class User extends Person{
  List <Book> _borrowedBooks =[];

  User(int id, String name,): super(id, name);

List<Book> get borrowedBook => _borrowedBooks;

void borrow( Book book){
  if(book.isAvailable){
    book.borrowBook();
    _borrowedBooks.add(book);
  }else{
    print('$name could not borrow ${book.title}');
  }
}

void returnBook(Book book){
  if(_borrowedBooks.contains(book)){
    book.returnBook();
    _borrowedBooks.remove(book);
  }else{
    print('$name did not borrow ${book.title}');
  }
}

}