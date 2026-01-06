import 'answer.dart';
import 'engine.dart';
import 'extend.dart';
import 'question.dart';
import 'quiz.dart';
import 'result.dart';
import 'user.dart';

void main(){
   List<Question> questionList = [
    Question(1, "What is the capital of Bangladesh", ["Dhaka","Chittagong","Rajshahi","Rangpur"], Answer(1),),
    Question(2, "What is the Name of Bangladesh Ex PM?", ["Sk", "Pk", "Ck", "Tk"],Answer(2),)
  ];

List<UserAnswer> userAnswer =[
  UserAnswer(1, 4),
  UserAnswer(2, 5),
];

  QuizEngine quiz =SimpleQuiz(questionList, userAnswer);

  Result result = quiz.run();
  print(result);

//  quiz.showQuestions();
//  quiz.startQuiz();

}