import 'dart:ffi';

late int
    global; // late - модификатор для того чтоб задавать переменную без значения вне функции
void main() {
  print('Hello world!');

  // VARIABLES
  // способі определения
  var numeric = 5; // var - сама определяет тип переменной в нашем случае (int)
  int number = 10; //int - тип переменной, для каждого типа данніх он свой

  // EXAMPLE
  print(numeric);
  print(number);
  number = 15;
  print(number);

  //Non - Nullable (переменние в которіх не допускаются значение Null )
  int like;
  like = 20;
  print(like);

  global = 25;
  print(global);

  // Nullable (переменніе которіе допускают значение Null )
  int? comment;
  print(comment);

  // Const && Final - переменніе которіе не изменяються

  const int myYearOfBirth =
      1984; // const - значение должно біть задано до того как начал віполняться код
  final int timeNow = DateTime.now()
      .hour; // final - значение может біть задано после начала віполнения кода (данніе сервера. время как в примере)
  print(myYearOfBirth);
  print(timeNow);

  // DATA TYPES

  //number (num => int && double)
  int nums = 10; // integer - значение целого числа
  print(nums);
  double myDouble = 10.5; // double - значение с плавающей запятой
  print(myDouble);
  double myDouble1 = 10; // значение будет 10.0
  print(myDouble1);

  //string (UTF-16)
  String myName = 'I\'m Anton'; // одинарніе ковічки ( \ - для єкранирования)
  String mySurName = "Izotov"; // Двойніе кавічки
  print(mySurName[0]); // получаем первій символ строки
  String fullName = ''' I am
  Anton 
  Izotov'''; // Тройние кавічки для многострочніх строк
  String text =
      '$myName + $mySurName = ${fullName.toUpperCase()}'; // $ - для вівода переменніх ${}для вівода віражений
  print(text);

  //boolean (true && false)
  bool a = true;
  var b = false;
  print(a);
  print(b);

  //Rune (Руні)(UTF-32) показівает букві в цифровой возиции в таблице Unicode
  Runes hello = Runes('Hello');
  print(hello); // (72, 101, 108, 108, 111) так віглядит слово 'Hello' в Unicode

  // в Unicode тоже можна показати місце наступним чином \uXXXX

  Runes input = Runes('\u2665 \u{1f600}');
  print(String.fromCharCodes(input));

  //Symbol

  Symbol object = new Symbol('name');
  print(object);

  //Null

//чтоб переменная могла принять null после типа нужно ставить ? например:
  int? notANumber = null;
  //List, Set, Map

// ПРЕОБРОЗОВАНИЕ ТИПОВ И ПОДТИПОВ (статических)

  num myNumber = 523;
  final someInt = myNumber
      as int; //`as` заставляет розпозновать 'num' как его подтип которій я указал
  final testBouble = someInt.toDouble(); // int => double
  final testString = testBouble.toString(); // double => string
  print(testString);

  // ДИНАМИЧЕСКИЕ ТИПІ ДАННІХ

  dynamic testDynamic = 10; // принимает любой тип. и можно на любой поменять
  testDynamic = "Hello";

  Object? testObject = 23; //правильнее вместо dynamic использовать Object
  testObject = 'Hello';

  var testVar; // var по умолчанию сначала тоже dynamic
  testVar = 10;
  testVar = 'Hello';

// УСЛОЫНИЕ КОНСТРУКЦИИ IF ELSE

  var grade = 55;

  if (grade <= 50) {
    // Рабртает аналогично JS
    print('First Ok');
  } else if (grade >= 100) {
    print("Second Ok");
  } else if (grade <= 150) {
    print("Therd Ok");
  }

  var x = 1;
  var y = 3;
  int z = (x > y) ? (x - y) : (x + y); // тернарное выражение аналогично JS
  print(z);

// УСЛОЫНИЕ КОНСТРУКЦИИ SWITCH CASE

  var mySwich = 'test'; // Рабртает аналогично JS
  switch (mySwich) {
    case 'noTest':
      print('Problem');
      break;
    case 'test':
      print('All ok');
      break;
    default:
      print('Somsing wron');
  }

// ЦИКЛИ
  int counter = 0;

  do {
    counter++; // дуйствие в цикле
    print('My number $counter');
    if (counter == 4) {
      print('counter === 4');
      continue;
    } else if (counter == 9) {
      print('stop');
      breake;
    }
  } while (counter < 10); // правила для цикла
}
