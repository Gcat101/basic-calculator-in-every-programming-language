#!/usr/bin/env python3

print()
 
first = input("Input your first number: ")
second = input("Input your second number: ")

if first.isnumeric() and second.isnumeric():
    first = int(first)
    second = int(second)
else:
    print("Unknown number\n")
    quit(1)

action = input("What do you want to do (+|-|*|/): ")

if action=='+': result=first+second
elif action=='-': result=first-second
elif action=='*': result=first*second
elif action=='/': result=round(first/second)
else: 
    print("Unknown action\n")
    quit(1)

print(f"Result: {result}\n")