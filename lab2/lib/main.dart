
import 'dart:async';

void main() async {
  print('=== START LAB 2 ===\n');

  exercise1();

  exercise2();

  exercise3();

  exercise4();

  await exercise5();

  print('\n=== END LAB 2 ===');
}

void exercise1() {
  print('--- Exercise 1: Basic Syntax & Data Types ---');

  int myAge = 20;
  double piValue = 3.14159;
  String greeting = "Hello Dart";
  bool isDartFun = true;

  print('Integer: $myAge');
  print('Double: $piValue');
  print('String: $greeting');
  print('Boolean: $isDartFun');

  print('$greeting! Is it fun? $isDartFun. Next year age: ${myAge + 1}');
  print('');
}

void exercise2() {
  print('--- Exercise 2: Collections & Operators ---');

  List<int> numbers = [10, 20, 30];
  numbers.add(40);
  print('List of numbers: $numbers');
  print('First element: ${numbers[0]}');

  Set<String> fruits = {'Apple', 'Banana', 'Orange'};
  fruits.add('Apple');
  print('Set of fruits (unique): $fruits');

  Map<String, String> capitals = {
    'Vietnam': 'Hanoi',
    'USA': 'Washington D.C.',
    'Japan': 'Tokyo'
  };
  capitals['France'] = 'Paris';
  print('Capital of Vietnam: ${capitals['Vietnam']}');
  print('All Capitals: $capitals');

  int a = 15;
  int b = 4;
  print('Addition: ${a + b}');
  print('Division: ${a / b}');
  print('Integer Division: ${a ~/ b}');
  print('Modulus: ${a % b}');

  bool check = (a > 10) && (b < 5);
  print('Is $a > 10 AND $b < 5? $check');

  String status = (a % 2 == 0) ? 'Even' : 'Odd';
  print('$a is $status');
  print('');
}

void exercise3() {
  print('--- Exercise 3: Control Flow & Functions ---');

  int score = 85;
  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 75) {
    print('Grade: B');
  } else {
    print('Grade: C');
  }

  int dayOfWeek = 3;
  switch (dayOfWeek) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    default:
      print('Other day');
  }

  List<String> langs = ['Dart', 'Java', 'Python'];

  print('For Loop:');
  for (int i = 0; i < langs.length; i++) {
    print('- ${langs[i]}');
  }

  print('For-in Loop:');
  for (var lang in langs) {
    print('> $lang');
  }

  print('ForEach Loop:');
  langs.forEach((lang) => print('* $lang'));

  print('Sum of 5 and 7: ${calculateSum(5, 7)}');
  print('Square of 4: ${square(4)}');
  print('');
}

int calculateSum(int a, int b) {
  return a + b;
}

int square(int n) => n * n;

class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  Car.now(this.brand) : year = 2026;

  void honk() {
    print('$brand ($year) says: Beep Beep!');
  }
}

class ElectricCar extends Car {
  double batteryLevel;

  ElectricCar(String brand, int year, this.batteryLevel) : super(brand, year);

  @override
  void honk() {
    print('$brand ($year) [Electric] says: Silent Hummm...');
  }

  void checkBattery() {
    print('Battery at $batteryLevel%');
  }
}

void exercise4() {
  print('--- Exercise 4: Intro to OOP ---');

  Car myCar = Car('Toyota', 2020);
  myCar.honk();

  Car newCar = Car.now('Ford');
  newCar.honk();

  ElectricCar myTesla = ElectricCar('Tesla', 2024, 85.5);
  myTesla.honk();
  myTesla.checkBattery();
  print('');
}

Future<void> exercise5() async {
  print('--- Exercise 5: Async, Future, Null Safety & Streams ---');

  String? name;
  print('Name is: ${name ?? "Unknown"}');

  name = "DartUser";
  print('Name is: $name');

  print('Fetching user data...');
  String data = await fetchUserData();
  print('Data received: $data');

  print('Listening to number stream...');
  await for (int number in countStream(3)) {
    print('Stream Value: $number');
  }
  print('Stream finished.');
}

Future<String> fetchUserData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'User ID: 12345';
}

Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}
