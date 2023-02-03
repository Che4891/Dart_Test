// ignore_for_file: dead_code

import 'dart:ffi';
import 'dart:math';

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

  // DO WHILE

  do {
    // правила (while) проверяеться после входа в цикл
    counter++; // дуйствие в цикле
    if (counter == 4) {
      print('counter === 4');
      continue;
    } else if (counter == 9) {
      print('stop');
      break;
    }
    print('My number $counter');
  } while (counter < 10); // правила для цикла

  //WHILE

  while (counter < 10) {
    // правила (while) проверяеться до входа в цикл
    print('test');
    counter++;
  }

  //FOR
  for (var i = 0; i < 10; i++) {
    // перебо цикла FOR 1) задаем значение I; 2) устанавливаем правило. 3) меняем значение
    if (i % 2 == 0) {
      print(i);
    }
  }

  //LIST(масиві)

//Создание массива
  var fruits = [
    'apple',
    'orange',
    'pear'
  ]; //обичній массив но автоматом определяеться его тип
  print(fruits);
  fruits = [];
  fruits = ['pineapple', 'watermelone', 'lemon'];
  print(fruits);

  List<String> apple =
      []; //если задавать пустой массив изначально желательно задать его тип
  var orange = <String>[];
  print('$orange; $apple');

  // получение елемента из массива
  final secondElement = fruits[1];
  final index = fruits.indexOf('watermelone'); // получение index по value
  final value = fruits[index]; //получение value по index
  final isContain = fruits
      .contains('watermelone'); // проверка на наличие такого  значение в списке

  print('$secondElement, $index, $value, $isContain');

  // Замена елемента
  fruits[1] = 'avocado';

  //Добавление елемента
  fruits.add('banana'); // Добавление в конец списка
  fruits.insert(
      1, 'orange'); //Перавій аргумент место на которое будет добавлен елемент

  //Удаление елемента
  fruits.remove('banana'); // удаление с помощью value
  fruits.removeAt(1); // удаление с помощью index

  //Сортировка списка
  var integers = [105, 55, 3, 98, 4];
  integers.sort(); // Сортировка работает так же как и в JS
  final minVal = integers[0];
  final maxVal = integers[integers.length - 1];
  print('In $integers is minVal: $minVal is maxVal: $maxVal');

  fruits.sort(); // Сортирует строки тоже. (как и JS по алфаіиту и по длине)
  print(fruits);

// Изменякмые и не изменякмые списки
  var testList = ['tast', 'test1', 'test2'];
  testList = [];
  testList = [
    'test3',
    'test4',
    'test5'
  ]; // var дает возможность перезаписывать весь список или частично через методы

  final newList =
      testList; // final не дает возможности перезаписать весь список только изменять с помощью методов или перезаписывать части его
  newList.add('test6');
  newList.remove('test3');
  newList[1] = 'test777';

  //не изменяемым его делает следующее
  final unmodifiablrList = List.unmodifiable(
      newList); // такой список не возможно изменять из за метода List.unmodifiable
  final lastList = const [
    'immutable1',
    'immutable2',
  ]; // такой список не возможно изменять из за const
  print('$testList && $newList immutable list: $unmodifiablrList && $lastList');

  // Методы списков

  print(fruits
      .last); // получение последнего елемента или (fruits[fruits.length - 1])
  print(fruits.first); // получение первого елемента иди (fruits[0])
  print(fruits.isEmpty); // проверка или пустой
  print(fruits.isNotEmpty); // проверка или не пустой

  for (var i = 0; i < fruits.length; i++) {
    final fruit = fruits[i];
    print('I like : $fruit');
  }

  for (var fruit in fruits) {
    // for in это агалог for но без доп проверок индекса
    print('I love : $fruit');
  }

  // Обединение списков
  const appleAndPanapple = ['apple', 'pannapple'];
  const orangeAndPear = ['orange', 'pear'];
  final total = [
    'watermelone',
    ...appleAndPanapple
  ]; // через спред операторт (...) добавляес развернутый список в список.
  total.addAll(orangeAndPear); // делает то же что и спред оператор

  // if в списках
  const orangeAllergy = true;

  final ifInList = [if (!orangeAllergy) 'orange', 'pear'];

  final bigFruts = ['BANANA', for (final big in total) big.toUpperCase()];

  print('$total && $ifInList && $bigFruts');

  //SET

  //create SET

  final setOne = <int>{1, 3, 5}; // создание SET со значением int
  final setTwo = {4, 'hello', 'world'}; // создание сета без указания типа
  final setThree = Set.from(total); // создание сета из массива
  print('$setOne && $setTwo && $setThree');

  //методі SET
  final newFruts = {'watermelone', 'apple', 'pannapple', 'orange', 'pear'};
  print(newFruts.contains('pannapple')); // проверка на наличие елемента = true
  print(newFruts.containsAll({
    'pannapple',
    'bananna'
  })); // проверка на наличие нескольких елементов = false
  newFruts.add('bananna'); // добавление елемента
  newFruts.remove('pear'); // удаление елемента
  newFruts.addAll(['kiwi', 'avocado']);
  print(newFruts);

  for (var element in newFruts) {
    print('I\'m love $element');
  }

  final freshFruts = newFruts
      .toSet(); // копирование Set (если присваивать на прямую по следующие изменения будут относиться не ттолько к копии но и к орегиналу удаление и т .д)
  print(freshFruts);

  var newFruts2 = {
    ...freshFruts,
    'drags',
    if (true) 'coco'
  }; // спред оператор і if работаю так же как і в массиве
  print(newFruts2);

  final randomGenerator = Random();
  final randomList = <int>[];

  for (var i = 0; i < 10; i++) {
    final randomInt = randomGenerator.nextInt(
        10); // метод для создания рамдомныз чисел от 0 и до значения что мы указали
    randomList.add(randomInt);
  }
  print(randomList);
  final uniqueValue = <int>[];
  final doublikateValue = <int>[];
  for (var element in randomList) {
    // действия для того чтоб определить дубликати (если нужно только уникальные значение можно массив переделать в set и дубликати не будут выводиться)
    if (uniqueValue.contains(element)) {
      doublikateValue.add(element);
    }
    uniqueValue.add(element);
  }
  print(doublikateValue);

  // Математические операции с Set
  final setA = {'Anton', 'Inna', "Eva"};
  final setB = {'Eva', 'Sasha'};
  final interSection = setA.intersection(
      setB); // intersection - метод который находит одинаковые значения и записывае их в новый Set {'Eva'}

  final union =
      setA.union(setB); // union - обединение двух Set (дубликат удаляеться)

  final diference = setA.difference(
      setB); // difference - записывае в новый Set угткальные значение из setA ( игнорируеться то что совпадает с setB)
  print('$interSection, $union, $diference');

// MAP {Обкеты}

  final Map<String, int> emptiMap = {}; // явное указание типа
  final emptiMap1 = <String, int>{}; // явное указание типа
  final emptiMap2 = {}; // Dart по пустому обекту сам определяет что это Map

  final caloriesInFrut = { //ключт и значения могут быть разных типов
    'apple': 200,
    'pinapple': 'empty',
    'watermelon': [250, 300],
  };
  print(caloriesInFrut);
}
