import Foundation

print()

print("Input your first number: ", terminator: "")
let firststr = readLine() ?? ""
print("Input your second number: ", terminator: "")
let secondstr = readLine() ?? ""

let firstint=Int(firststr)
let secondint=Int(secondstr)

if (firstint==nil || secondint==nil) {
  print("Unknown number\n")
  exit(1)
}

let first=firstint ?? 0
let second=secondint ?? 0

print("What do you want to do (+|-|*|/): ", terminator: "")
let actionstr = readLine() ?? ""
let action = Array(actionstr)[0]

var result:Int
switch action {
  case "+": result=first+second
  case "-": result=first-second
  case "*": result=first*second
  case "/": result=first/second
  default:
    print("Unknown action\n")
    exit(1)
}

print(String(format: "Result: %d\n", result))