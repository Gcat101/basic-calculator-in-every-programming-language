import "dart:io";

void main() {
  stdout.write('\n');

  stdout.write("Input your first number: ");
  String firststr = stdin.readLineSync() ?? "";
  stdout.write("Input your second number: ");
  String secondstr = stdin.readLineSync() ?? "";

  int first = 0;
  int second = 0;
  try {
    first = int.parse(firststr);
    second = int.parse(secondstr);
  } catch (e) {
    print("Unknown number\n");
    exit(1);
  }

  stdout.write("What do you want to do (+|-|*|/): ");
  String action = stdin.readLineSync() ?? "";
  action = action[0];

  int result;
  switch (action) {
    case "+":
      result = first + second;
      break;
    case "-":
      result = first - second;
      break;
    case "*":
      result = first * second;
      break;
    case "/":
      result = (first / second).round();
      break;
    default:
      print("Unknown action\n");
      exit(1);
  }

  print("Result: $result\n");
}
