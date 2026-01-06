import 'engine.dart';
import 'question.dart';
import 'result.dart';
import 'user.dart';

class Quiz extends QuizEngine{
  final List<Question> _question;
  final List<UserAnswer> _userAnswer;
  int _score=0;

  Quiz(this._question, this._userAnswer);
      
@override
  Result run() {
   for(var qs in _question){
    UserAnswer ua = _userAnswer.firstWhere((ua)=>ua.questionId== qs.id,
    orElse: () => UserAnswer(qs.id, -1),
    );
    if(qs.isCorrect(ua.selectedIdx)){
       _score++;
    };
   }
    return Result(_question.length, _score);
  }
}