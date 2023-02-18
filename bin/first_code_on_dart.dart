import 'dart:math';
import 'dart:mirrors';

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

  final caloriesInFrut = {
    //ключт и значения могут быть разных типов
    'apple': 200,
    'pinapple': 'empty',
    'watermelon': [250, 300],
  };
  final numberCaloriesInApple =
      caloriesInFrut['apple']; // получение значения по ключу
  caloriesInFrut['orange'] = 300; //добавление елемента по ключу
  caloriesInFrut['orange'] = 100; //изменение значения по ключу
  caloriesInFrut.remove('pinapple'); //удаление елемента по ключу
  print(caloriesInFrut.isEmpty); // проверка на то или пустой обект
  print(caloriesInFrut.isNotEmpty); // проверка на то или не пустой обект
  print(caloriesInFrut.keys); // віводим тооллько ключи
  print(caloriesInFrut.values); //віводим только значение
  print(caloriesInFrut.containsKey('apple')); // проверка или есть такой Key
  print(caloriesInFrut
      .containsValue(10)); //проверка или есть такое value в обекье

  print('$numberCaloriesInApple + $caloriesInFrut');

  //Методы перебора Map

  for (var element in caloriesInFrut.entries) {
    print('${element.key} => ${element.value}');
  }

  for (var element in caloriesInFrut.keys) {
    print('$element');
  }

  // Iterables обект

  final myList = [
    'a',
    'b',
    'c',
  ];
  print(myList);
  final myReversList = myList
      .reversed; // возвращает список в обратном порядке но его быструю копию тоесто не заходя в середину (Iterables обект)
  print(myReversList);
  print(myReversList.toList()); // переделываем обратно в обычный список

  Iterable<String> myIttereble = myList; // в ручную делаем  Iterables обект
  final twoElement = myIttereble.elementAt(
      1); // поиск елемента по индексу (dart для єтого перебирает весь обект с помощью forIn)
  print(twoElement);
  print(myIttereble.last);
  print(myIttereble.first);
  print(myIttereble
      .length); // в Iterables даже простые методы требуют переборов всей колекции

// FUNCTION

  sayHello();
  String myName1 = getName();
  String myAge = getAge(38);
  String mySecond = getSecondName('Izotov');

  print('$myName1 $mySecond and $myAge');
  getFullInformation('Anton', 38);
  testFunctionOne('Anton');
  testFunctionTwo(age: 38, name: 'Anton');
  testNewFunction();
  final firstSum = firstAmount();
  final secondSum = secondAmount();
  final therdSum = therdAmount();
  print('$firstSum $secondSum $therdSum');

  testForFunction();
  anonimFun(2, 3);
  int result = operatorNumbers(3, 7, (a, b) => a - b);
  print('428  $result');

  Function add = addNumber(4);
  int resylt = add(6);
  print(' my resylt $resylt');
  serverFunction();

    try{
        Person tom = Person("Tom", -45);
        print(tom.age);
    }
     on AgeException catch(e){
         print(e.getErrorMessage());
    }finally {
      print("Finish program");
    }

   Car myCAr = Car(); // візов класса и присвоение его свойством значение

   myCAr.carName = 'Ford';
   myCAr.start();


  Car myCAr2 = Car('Skoda','red'); // параметрі передаюится для конструктора ( віше +myCAr+ мі передаем параметрі как бі без конструктора)
  myCAr2.newCar();

  var myCarNamed = Car.fromColor('green');
  myCarNamed.newCar();

  
  Car myCarw3 = Car.constructirNamed('Pink');
  myCarw3.newCar();

}

void sayHello() {
  print('Hello Anton'); // Void указываеться если в функции нет return
}

getName() {
  return 'Anton'; // return возвращает значение функции
}

getAge(int age) {
  return "You age $age"; // вот так передаються аргументы
}

getSecondName(String secondName) =>
    'My second name is $secondName'; // обікновенная стрелочная функция как в JS делает return тела

getFullInformation(name, age) {
  // передае 2 параметра без указания их типа
  print('My name is $name, I\'m $age years old');
}

testFunctionOne(name, [age]) {
  // [] - обозначают не обязательный параметр (если его не указать замениться на null)
  print('$name  & $age');
}

testFunctionTwo({name, age}) {
  // {} - обозначаються именнованные параметры порядок терерь не имеет значения
  print('$name  & $age');
}

// Работа с функциями

void testForFunction() {
  Function person = getmyName; // записываем а переменную линк на функцию
  person();
  person = getLastName; // перезаписываем линк на функцию
  person();

  getPerson(getmyName); // передаю в качестве аргумента другую функцию
  getPerson(getLastName); // передаю в качестве аргумента другую функцию

  Function myPerson = getNameOrLastName('Sidor');
  myPerson();
}

void getmyName() {
  print('Anton');
}

void getLastName() {
  print('Izotov');
}

// Функция в качестве аргумента к другой функции

void getPerson(Function myFuctions) {
  myFuctions();
}

// Функция которая при return вызывает другую функцию

Function getNameOrLastName(String mayValue) {
  if (mayValue == 'Anton') {
    return getmyName;
  } else {
    return getLastName;
  }
}

// Анонимная функция ( не именнованная функция)

Function anonimFun = (int a, int b) => print(
    a + b); // записіваем в переменную функцию и візіваем віше с анрументами

int operatorNumbers(int a, int b, Function operation) {
  // еще один пример в агрумент мі передаем значение и функцию которія что то делает но пока не указано что (укажем віше когда зададим аргумент)
  return operation(a, b);
}

// Замікание функции
Function addNumber(int x) {
  // єто внешняя функция она получает свой параметр при візове
  int sum(int y) {
    // єто внутренняя функция она принимает свой параметр когда мі перезаписіваем внешнию
    return x + y;
  }

  return sum;
}

// Исключение Try / On / Cetch / Finaly /

void serverFunction() {
  try {
    var errorInList = [
      double.parse('3,34'),
      5,
      7
    ]; // с помощью try проверяем или нет ошибки если нет то віполняесться код. если есть то переходит дальше
    print(errorInList);
  } on FormatException {
    //  on - помогает проверить на конкретную ошибку например если ошибка FormatException віполниться єтот шаг если нет то дальше переходит
    print('This error FormatException');
  } catch (e) {
    // catch - сюда заходит если два предідущих условия не віполнились и в /e/ попадет ошибка
    print(e);
  } finally {
    // finally - сюда зайдет в любом случає не имеет значения будут ошибки или нетт
    print('it\'s fynally');
  }
}

// Пользовательские исключения

class Person{
    String name;
    int age = 1;
      
    Person(this.name, age){
        if(age < 1 || age > 110) {
            throw AgeException();  // вызываем класс который вызовет пользовательское событие и будет досткпно для отследивания через try & catch (выше есть фугкция где проверяеться условие чеоез try & catch)
        }
        else{
            this.age = age;
        }
    }
}
class AgeException  implements Exception{
    String getErrorMessage() {
        return "Incorrect age";
    }
}

// CLASS


class Car {
  String ?carName;
  var color;

  Car([this.carName, this.color = 'grey']);  // конструктор класаа - может принималь параметрі и віполнять какую то логику например мі можем поставить по умолчанию значение color = "grey" 

  // Car([carName, color]) {   єто то же что и записано віше просто расписано и видно что мі принимаем параметрі віше и дальше через this передаем их в локальніе переменніе [] - чтоб они могли біть не обязательніми
  //   this.carName=carName;
  //   this.color=color;
  // }

  Car.fromColor(color){  // Именнованній конструктор - конструктор без именни может біть ттоолько 1 чтоб их біло несколько добавляеться именной конструктор которій принимает свои параметрі при візове
    carName = "Dodge";
    this.color = color;
  }

  Car.constructirNamed(var color): this("Acura", color); // Инициалецатор конструктора - єто когда с помощью одного конструктора я візвал самій первій (не именноваггій) и в него передал значения


  void start() {
    print('$carName has a $color color');

  }
   void newCar() {
    print('$carName is my new car and has $color color');
  }
}





// ДЗ
var arr_en = [
  'a',
  'b',
  'c',
  'd',
  'e',
  'f',
  'g',
  'h',
  'i',
  'j',
  'k',
  'l',
  'm',
  'n',
  'o',
  'p',
  'q',
  'r',
  's',
  't',
  'u',
  'v',
  'w',
  'x',
  'y',
  'z'
];
var test_list = ["dart", "abc", "good luck"];
List<String> aList = [];
List<String> bList = [];
List<String> cList = [];

testNewFunction() {
  test_list.asMap().forEach((index, value) => {
        // print(value.split(''))
        if (index == 0)
          {aList = value.split('')}
        else if (index == 1)
          {bList = value.split('')}
        else if (index == 2)
          {cList = value.split('')}
      });
}

firstAmount() {
  int sum = 0;
  for (var i in aList) {
    sum += arr_en.indexOf(i) + 1;
  }
  return sum * 1;
}

secondAmount() {
  int sum = 0;
  for (var i in bList) {
    sum += arr_en.indexOf(i) + 1;
  }
  return sum * 2;
}

therdAmount() {
  int sum = 0;
  for (var i in cList) {
    if (i != ' ') {
      sum += arr_en.indexOf(i) + 1;
    }
  }
  return sum * 3;
}
