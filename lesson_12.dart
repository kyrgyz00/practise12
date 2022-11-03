import 'dart:io';
import 'dart:math';

void main() {
  // binar_1();
  // task_2();
 task_3();
  
}

binar_1() {
  print("imagine a number from 1 till 128,be honest");
  int min = 0;
  int max = 100;
  int mid = (max + min) ~/ 2;
  // int mid = Random().nextInt(100);
  stdout.write(" + or - $mid?");
  String answer = "";
  bool stopFunc = true;
  int counter = 0;

  while (answer != "yes") {
    stdout.write("is it $mid ?");
    answer = stdin.readLineSync()!;
    if (answer == '+') {
      min = mid;
      mid = min + Random().nextInt(max - min);
      counter++;
    } else if (answer == "-") {
      max = mid;
      mid = min + Random().nextInt(max - min);
      counter++;
    } else if (answer == "yes") {
      print("the end of the game");
      counter++;
    } else {
      print("the $answer is not correct");
      answer = stdin.readLineSync()!;
    }
  }

  print("got it on $counter steps");
}

void task_2() {
  int min = 0;
  int max = 101;
  // int mid = (max + min) ~/ 2;
  int mid = Random().nextInt(max);
  int a = Random().nextInt(100);

  int counter = 1;
  print(a);

  while (a != mid) {
    print('is this $mid?');

    if (a < mid) {
      max = mid;
      mid = min + Random().nextInt(max - min);
      counter++;
    } else if (a > mid) {
      min = mid;
      mid = min + Random().nextInt(max - min);
      counter++;
    } else if (a == mid) {
      print("the end of the game");
      counter++;
    } else {
      print("the $a is not correct");
    }
  }
  print("tvoe chislo $a");
  print("got it on $counter steps");
}

task_3() {
  List array = [];

  for (int i = 0; i < 100; i++) {
    array.add(Random().nextInt(101));
  }

  print(array);

  int randomSum = 0;
  int binarySum = 0;

  for (int i = 0; i < array.length; i++) {
    randomSum += random_helper(array[i]);
    binarySum += binary_helper(array[i]);
  }

  print('randomSum === $randomSum');
  print('average ====== ${randomSum ~/ array.length}');

  print("binarySum ===== $binarySum");
  print("avarage of binar ===${binarySum ~/ array.length}");

  if (binarySum < randomSum) {
    print("  binar is faster");
  } else if (binarySum == randomSum) {
    print("equal");
  } else {
    print("random binar is faster");
  }
}

int random_helper(int x) {
  int min = 0;
  int max = 101;
  // int mid = (max + min) ~/ 2;
  int mid = Random().nextInt(max);
  int a = x;

  int counter = 1;
  print(a);

  while (a != mid) {
    print('is this $mid?');

    if (a < mid) {
      max = mid;
      mid = min + Random().nextInt(max - min);
      counter++;
    } else if (a > mid) {
      min = mid;
      mid = min + Random().nextInt(max - min);
      counter++;
    } else if (a == mid) {
      print("the end of the game");
      counter++;
    } else {
      print("the $a is not correct");
    }
  }
  print("tvoe chislo $a");
  print("got it on $counter steps");

  return counter;
}

int binary_helper(int x) {
  int answer = x;
  print(answer);
  int min = 0;
  int max = 100;
  int mid = (max + min) ~/ 2;

  print(" + or - $mid?");
  int counter = 0;

  while (answer != mid) {
    print("is it $mid ? ");
    if (answer > mid) {
      min = mid;
      mid = ((max + min) / 2).round();
      counter++;
    } else if (answer < mid) {
      max = mid;
      mid = (max + min) ~/ 2;
      counter++;
    } else if (answer == mid) {
      print("the end of the game");
      counter++;
    } else {
      print("the $answer is not correct");
    }
  }

  print("$answer is your number");
  print("got it on $counter steps");

  return counter;
}
