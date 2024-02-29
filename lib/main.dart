import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './question.dart' ; 
import './answer.dart' ;
import './quiz.dart' ;
import './result.dart';
/* void main() {
 runApp(MyApp()) ; 
}
*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _MyAppState(); 
  }

}

class _MyAppState extends State<MyApp> {
 


  final _questions = const [
      {
        'questionText':  'What \'s your favorite color?', 
      'answers': [{'text':'Green','score':5},{'text':'Purple','score':4},{'text':'White','score':7}]
      },
     
      {'questionText':  'What \'s your favorite animal?', 
      'answers': [{'text':'Cat','score':5},{'text':'Dog','score':4},{'text':'Rabbit','score':1}]
      }, 

       {'questionText':  'What \'s your favorite instructor?', 
      'answers': [{'text':'Max','score':5},{'text':'Max','score':1},{'text':'Max','score':2}]
      }
    ];


var _questionIndex=0 ;
var _totalScore=0;

 void _answerQuestion(int score){
var aBool=true; 
aBool=false;

_totalScore = _totalScore + score ;
  if (_questionIndex < _questions.length) 
  {
print('We have more questions!') ;
  }
  setState(() {
    _questionIndex=_questionIndex+1 ;
  });
  
  print(_questionIndex);

 }
 
  @override
  Widget build(BuildContext context) {
 
 
 

// var dummy = ['Hello'] ; 
// dummy.add('Max') ; 
// print(dummy);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body:  _questionIndex < _questions.length ? 
          Quiz(
          answerQuestion:_answerQuestion ,
          questionIndex:_questionIndex ,
          questions:_questions
          )
          : Result() ),
    );
  }
}
