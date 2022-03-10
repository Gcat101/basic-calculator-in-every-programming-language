import kotlin.system.exitProcess

fun main() {
    print("\n")

    print("Input your first number: ")
    val firststr=readLine()!!
    print("Input your second number: ")
    val secondstr=readLine()!!

    var first: Int
    var second: Int
    try {
        first = firststr.toInt()
        second = secondstr.toInt()
    }
    catch(e: NumberFormatException) {
        println("Unknown number\n")
        exitProcess(1)
    }

    print("What do you want to do (+|-|*|/): ")
    val action=readLine()!![0]

    var result: Int
    when(action) {
        '+' -> result=first+second
        '-' -> result=first-second
        '*' -> result=first*second
        '/' -> result=first/second
        else -> {
            println("Unknown action\n")
            exitProcess(1)
        }
    }

    println(java.lang.String.format("Result: %d\n", result))
}