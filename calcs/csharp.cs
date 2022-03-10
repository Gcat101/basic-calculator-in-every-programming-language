using System;

namespace calc {
    class csharp {
        static void Main() {
            Console.Write('\n');

            Int32 first = 0;
            Int32 second = 0;
            char action = ' ';
            Int32 result = 0;

            Console.Write("Input your first number: ");
            string firststr = Console.ReadLine();
            Console.Write("Input your second number: ");
            string secondstr = Console.ReadLine();

            if (Int32.TryParse(firststr, out _) && Int32.TryParse(secondstr, out _)) {
                first = Int32.Parse(firststr);
                second = Int32.Parse(secondstr);
            }
            else {
                Console.WriteLine("Unknown number\n");
                Environment.Exit(1);
            }

            Console.Write("What do you want to do (+|-|*|/): ");
            action = Console.ReadLine()[0];

            switch (action)
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
                    Console.WriteLine("Unknown action\n");
                    Environment.Exit(1);
                    break;
            }

            Console.WriteLine(string.Format("Result: {0}\n", result));
        }
    }
}