#!/usr/bin/env ts-node

const input = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
})

let first : number
let second : number
let action : string
let result : number

console.log()

input.question("Input your first number: ", (a: string) => {
    first = parseInt(a);
    input.question("Input your second number: ", (b: string) => {
        second = parseInt(b);

        if(isNaN(first) || isNaN(second)) {
            console.log("Unknown number\n")
            process.exit(1)
        }

        input.question("What do you want to do (+|-|*|/): ", (c: string) => {
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