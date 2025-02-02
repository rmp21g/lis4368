import java.util.Scanner;
import java.io.File;


public class Methods {
    
    public static void getRequirements(){
        System.out.println("Developer: Ryan M. Parks");
        System.out.println("Program determines whether user-entered value is vowel, consonant, special character, or integer.");
        System.out.println("Program displays character\'s ASCII value.");

        System.out.println("\nReferences\n"
                            + "ASCII Background: https://en.wikipedia.org/wiki/ASCII\n"
                            + "ASCII Character Table: https://www.ascii-code.com/\n"
                            + "Lookup Tables: https://www.lookuptables.com/");

        System.out.println();
    }

    public static void determineChar(){
        char ch = ' ';
        char chTest = ' ';
        Scanner sc = new Scanner(System.in);

        System.out.println("Please enter character: ");
        ch = sc.next().charAt(0);
        chTest = Character.toLowerCase(ch);

        if((chTest == 'a' || chTest == 'e' || chTest == 'i' || chTest == 'o' || chTest == 'u' || chTest == 'y')){
            System.out.println(ch + " is vowel. ASCII value: " + (int) ch);
        }
        else if(ch >= '0' && ch <= '9'){
            System.out.println(ch + " is integer. ASCII value: " + (int) ch);
        }
        else if((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z')){
            System.out.println(ch + " is consonant. ASCII value: " + (int) ch);
        }
        else{
            System.out.println(ch + " is special character. ASCII value: " + (int) ch);
        }

        sc.close();
    }
}
