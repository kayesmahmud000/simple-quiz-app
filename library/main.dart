import 'author.dart';
import 'books.dart';
import 'library.dart';
import 'user.dart';

void main(){
  Library library = Library();
 
  Author author = Author(1, 'James Clear');


  
  // books
  Book book1 = Book(1, 'Clean Code', author);
  Book book2 = Book(2, 'The Alchemist', Author(2, "ADfg"));
  Book book3 = Book(3, 'Atomic Habits',  Author(3, "ADfg") );

  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  // users
  User user1 = User(1, 'Jon Due');
  User user2 = User(2, 'Alon Mask');
  User user3 = User(3, 'Bil Gets');

  library.addUser(user1);
  library.addUser(user2);
  library.addUser(user3);
 
  print('\n');
library.borrowBook(user1.id, book1.id);
// library.borrowBook(user2.id, book2.id);

  // print('\n');
  // user2.borrow(book2);

  // print('\n');
  // user3.borrow(book1);

  // library.displayAvailableBook();

  library.returnBook(book1.id, user1.id);

  library.displayAvailableBook();
} 