import 'author.dart';
import 'books.dart';
import 'library.dart';
import 'user.dart';

void main(){
  Library library = Library();
 
  Author author = Author(1, 'James Clear', 'author');


  
  // books
  Book book1 = Book(1, 'Clean Code', 'Robert C. Martin');
  Book book2 = Book(2, 'The Alchemist', 'Paulo Coelho');
  Book book3 = Book(3, 'Atomic Habits', 'James Clear');

  library.addBook(book1, author);
  library.addBook(book2, author);
  library.addBook(book3, author);

  // users
  User user1 = User(1, 'Jon Due');
  User user2 = User(2, 'Alon Mask');
  User user3 = User(3, 'Bil Gets');

  library.addUser(user1);
  library.addUser(user2);
  library.addUser(user3);
 
  print('\n');
  user1.borrow(book1);
  user2.borrow(book1);

  // print('\n');
  // user2.borrow(book2);

  // print('\n');
  // user3.borrow(book1);

  // library.displayAvailableBook();

  // user1.returnBook(book3);

  library.displayAvailableBook();
} 