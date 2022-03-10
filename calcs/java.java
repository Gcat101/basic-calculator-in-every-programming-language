import java.util.Scanner;
import java.util.InputMismatchException;

public class java {
    public static void main(String[] args) {
        System.out.print('\n');

        Scanner input = new Scanner(System.in);

        Integer first=0;
        Integer second=0;
        char action=' ';
        Integer result=0;

        try {
            System.out.print("Input your first number: ");
            first = input.nextInt();
            System.out.print("Input your second number: ");
            second = input.nextInt();
        }
        catch (InputMismatchException e) {
            System.out.println("Unknown number\n");
            System.exit(1);
        }

        System.out.print("What do you want to do (+|-|*|/): ");
        action = input.next().charAt(0);

        switch (action) {
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
                System.out.println("Unknown action\n");
                System.exit(1);
        }

        System.out.format("Result: %d\n\n", result);
        input.close();
    }
}