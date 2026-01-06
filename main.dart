import 'answer.dart';
import 'question.dart';
import 'quiz.dart';

void main(){
   List<Question> questionList = [
    Question(1, "What is the capital of Bangladesh", ["Dhaka","Chittagong","Rajshahi","Rangpur"], Answer(1, 0),),
    Question(2, "What is the Name of Bangladesh Ex PM?", ["Sk", "Pk", "Ck", "Tk"],Answer(2, 1),)
  ];

  // List<Answer> answerList =[
  //   Answer(1, 0),
  //   Answer(2, 1)
  // ];

  Quiz quiz =Quiz();

 questionList.forEach((qs)=>quiz.addQuestion(qs));
//  answerList.forEach((ans)=>quiz.addAnswer(ans));

 quiz.showQuestions();
 quiz.startQuiz();

}