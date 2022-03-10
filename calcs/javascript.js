#!/usr/bin/env node

const input = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
})

let first
let second
let action
let result

console.log()

input.question("Input your first number: ", a => {
    first = parseInt(a);
    input.question("Input your second number: ", b => {
        second = parseInt(b);

        if(isNaN(first) || isNaN(second)) {
            console.log("Unknown number\n")
            process.exit(1)
        }

        input.question("What do you want to do (+|-|*|/): ", c => {
            action = c;

            if(!(['+', '-', '*', '/'].includes(action))) {
                console.log("Unknown action\n")
                process.exit(1)
            }

            switch(action) {
                case '+':
                    result=first+second
                    break
                case '-':
                    result=first-second
                    break
                case '*':
                    result=first*second
                    break
                case '/':
                    result=Math.round(first/second)
                    break
                default:
                    console.log("Unknown action")
                    process.exit(1)
            }
            
            console.log(`Result: ${result}\n`)

            input.close()
        })
    })
})