import 'dart:math';

class Game {
  static const maxRandom = 100;
  int? _answer;
  var guessCount = 0+1;

  Game(){
    var r = Random();
    _answer = r.nextInt(maxRandom)+1;
  }

  int doGuess(int num){
    guessCount++;
    if(num > _answer!){
      return 1;
    } else if(num < _answer!){
      return -1;
    }else{
      return 0;
    }
  }

}

