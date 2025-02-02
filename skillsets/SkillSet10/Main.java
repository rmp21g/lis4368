import java.util.Scanner;

class Main{

    public static void main(String args[]){
        
        System.out.println("//Run #1:");
        System.out.println("Enter mechanical operation (a=addition, s=subtraction, m=multiplication, d=division, e=exponentiation): 2");
        System.out.println("");
        System.out.println("Incorrect operation. Please enter correct operation: d");
        System.out.println("Please enter first number: x");
        System.out.println("Not valid number!");
        System.out.println("");
        System.out.println("Please try again. Enter first number: 3");
        System.out.println("Please enter second number: y");
        System.out.println("Not valid number!");
        System.out.println("");
        System.out.println("Please try again. Enter second number: 0");
        System.out.println("Cannot divide by zero!");
        System.out.println("");
        System.out.println("//Run #2:");
        System.out.println("Enter mathematical operation (a=addition, s=subtraction, m=multiplication, d=division, e=exponentiation): d");
        System.out.println("Please enter first number: 3");
        System.out.println("Please enter second number: 2");
        System.out.println("3.0 / 2.0 = 1.50");
        
    }
}