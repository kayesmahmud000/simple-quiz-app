import 'answer.dart';
import 'question.dart';
import 'user.dart';

class Quiz {
final List<Question> _question=[];
// List <Answer> answerList =[];
int _score =0;

Quiz(List<Question> questions){
_question.addAll(questions);
}

// void addQuestion(Question question) {
//   _question.add(question);
// }

 void showQuestions (){
  _question.forEach((obj)=>print(obj.toString()));
 }

 void startQuiz (){
 List<UserAnswer> userAnswer=[
  UserAnswer(1,2)
 ];

for(var qs in _question){
  UserAnswer ua =userAnswer.firstWhere((ua)=>ua.questionId == qs.id,
  orElse: () => UserAnswer(qs.id, -1),);
   if(qs.isCorrect(ua.selectedIdx)){
      print('Question ${qs.id}: Correct');
      _score++;
    }else{
      print(' Question ${qs.id}: Wrong');
    }
}


    // Answer answer =answerList.firstWhere((ans)=>ans.qsId ==qs.id);

  print('Score : $_score / ${_question.length}');
 }
}