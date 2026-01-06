import 'answer.dart';

class Question {
  int _id;
  String _title;
  List<String>_options;
  Answer _answer;

  Question( this._id, this._title, this._options , this._answer);

int get id => _id;
  // String get title=> _title;
  // List<String> get options=> _options;
  // Answer get answer =>_answer;

bool isCorrect(int userAnsIdx){
  return _answer.answerIdx == userAnsIdx;
}

  @override
  String toString() {

    String formattedOptions ='';

    for (int i=0 ;i < _options.length; i++ ){
      formattedOptions += " ${i + 1} :${_options[i]}\n";
    }
   return '$_id : $_title \n${formattedOptions}';
  }
}
