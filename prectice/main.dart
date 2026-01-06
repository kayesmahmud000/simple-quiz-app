import 'answer.dart';
import 'engine.dart';
import 'question.dart';
import 'quiz.dart';
import 'result.dart';
import 'user.dart';

void main(){
  List<Question> questionList= [Question(1, "What is OOP", ['A Programming Language','A framework', 'A database', 'A programming paradigm'], Answer( 3)),
  Question(2, "What is the main building block of OOP in Dart?", ['Function','Class', 'Package', 'Variable'], Answer(1)),
  Question(3, 'What is the correct relationship between a class and an object?', ['A class is created from an object','An object is created from a class','They are the same thing', 'There is no relationship'], Answer(1))
  ];

  List <UserAnswer> userAnswer =[
    UserAnswer(1, 3),
    UserAnswer(2, 2),
    UserAnswer(3, 2),
  ];

  QuizEngine quiz =Quiz(questionList, userAnswer);

  Result result =quiz.run();
  print(result);


}