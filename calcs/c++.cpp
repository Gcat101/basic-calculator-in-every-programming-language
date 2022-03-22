#include <iostream>

int main() {
    double first;
    double second;
    char action;
    double result;

    while(true) {
        std::cout << "Input your first number: ";
        std::cin >> first;
        if (std::cin.fail()) {
            std::cin.clear(); std::cin.ignore();
            std::cout << "Not a valid number!\n";
        } else break;
    }

    while(true) {
        std::cout << "Input your second number: ";
        std::cin >> second;
        if (std::cin.fail()) {
            std::cin.clear(); std::cin.ignore();
            std::cout << "Not a valid number!\n";
        } else break;
    }

    while(true) {
        std::cout << "What do you want to do? ( + | - | * | / ): ";
        std::cin >> action;
        if (std::cin.fail()) {
            std::cin.clear(); std::cin.ignore();
            std::cout << "Not a valid character!\n";
        } 
        else switch (action)
        {
        case '+':
            result=first+second;
            break;
        case '-':
            result=first-second;
            break;
        case '*':
            result=first*second;
            break;
        case '/':
            result=first/second;
            break;
        default:
            std::cout << "Unknown action!\n";
            continue;
            break;
        };
        break;
    }

    std::cout << "Result: " << result << std::endl;
}
