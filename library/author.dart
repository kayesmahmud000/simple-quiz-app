import 'person.dart';

class Author extends Person{
  String _role='author';

  Author(int id, String name , this._role): super(id, name);

}