

import 'answer.dart';

class Question {
  int _id;
  String _title;
  List<String> _options;
  Answer _answer ;


  Question(this._id, this._title, this._options,this._answer );

int get id =>_id;

bool isCorrect( int userAnsIdx){
  return _answer.answerIdx == userAnsIdx;
}

  @override
 String toString() {

  String formatted='';
  for (int i=0; i <_options.length; i++){
    return '${i+1}: ${_options[i]}\n';
  }
    return '$_id : $_title ? \n ${formatted}';
  }
}