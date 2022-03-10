package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	fmt.Print("\n")

	firststr := ""
	secondstr := ""
	first := 0
	second := 0
	action := ""
	result := 0

	fmt.Print("Input your first number: ")
	fmt.Scanln(&firststr)
	fmt.Print("Input your second number: ")
	fmt.Scanln(&secondstr)

	first, errfirst := strconv.Atoi(firststr)
	second, errsecond := strconv.Atoi(secondstr)

	if errfirst != nil || errsecond != nil {
		fmt.Println("Unknown number\n ")
		os.Exit(1)
	}

	fmt.Print("What do you want to do (+|-|*|/): ")
	fmt.Scanln(&action)
	action = action[0:1]

	switch action {
	case "+":
		result = first + second
	case "-":
		result = first - second
	case "*":
		result = first * second
	case "/":
		result = first / second
	default:
		fmt.Println("Unknown action\n ")
		os.Exit(1)
	}

	fmt.Printf("Result: %d\n\n", result)
}
