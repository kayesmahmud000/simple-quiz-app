import 'answer.dart';
import 'question.dart';

class Quiz {
List<Question> questionList =[];
// List <Answer> answerList =[];
int _score =0;


void addQuestion(Question question){
  this.questionList.add(question);

}


// void addAnswer(Answer answer){
//   answerList.add(answer);
// }
 
 void showQuestions (){
  questionList.forEach((obj)=>print(obj.toString()));
 }

 void startQuiz (){
  Map<int, int> userAnswer={
    1:3,
    2:1,
  };

  questionList.forEach((qs){
    int userAnsIdx = userAnswer[qs.id]?? -1;

    // Answer answer =answerList.firstWhere((ans)=>ans.qsId ==qs.id);

    if(qs.answer.answerIdx == userAnsIdx){
      print('Question ${qs.id}: Correct');
      _score++;
    }else{
      print(' Question ${qs.id}: Wrong');
    }
  });

  print('Score : $_score / ${questionList.length}');
 }


}