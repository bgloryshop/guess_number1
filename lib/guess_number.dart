// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

import 'game.dart';

void main() {
  const maxRandom = 100;
  var random = Random();
  var game = Game();


  var isCorrect = false;
  var again = false;
  var NewGame = false;
  var check = 1;
  //int guessCount = 0;



  do {
    while(check == 1){

      print('╔════════════════════════════════════════');
      print('║            GUESS THE NUMBER            ');
      print('╟────────────────────────────────────────');
      check = 0;

    }
    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }

    //guessCount++;
    var Count = game.guessCount;
    var result = game.doGuess(guess);
    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else {
      print('║ ➜ $guess is CORRECT ❤, total guesses: $Count');
      print('╟────────────────────────────────────────');
      print('║                 THE END                ');
      print('╚════════════════════════════════════════');
      again = true;
      check = 1;
    }
    while (again == true) {
      stdout.write('PlAY AGAIN (Y/N) ');
      var play = stdin.readLineSync();
      if (play == 'Y' || play == 'y') {
        again = false;
        game.guessCount = 0 + 1;
      } else if (play == 'N' || play == 'n') {
        isCorrect = true;
        break;
      }
    }


  } while (!isCorrect);

}
