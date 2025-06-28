/**
 * A palindromic number reads the same both ways. The largest palindrome made
 * from the product of two 2-digit numbers is 9009=91*99.
 * Find the largest palindrome made from the product of two 3-digit numbers.
 */
public class P4 {
    public static void main(String[] args) {
        int largestPalindrome = 1;
        for (int i = 999; 0 < i; i--) {
            for (int j = 999; 0 < j; j--) {
                int product = j * i;
                if (product <= 100000) {
                    break;
                }
                if (is6DigitPalindrome(product) && largestPalindrome < product) {
                    largestPalindrome = product;
                }
            }
        }
        System.out.println(largestPalindrome);
    }

    public static boolean is6DigitPalindrome(int n) {
        if (n <= 100000 || 1000000 <= n)
            return false;

        int d0_to_d5 = n;
        int d0 = d0_to_d5 / 100000;
        int d5 = d0_to_d5 % 10;
        int d1_to_d4 = (d0_to_d5 - (d0 * 100000)) / 10;
        int d1 = d1_to_d4 / 1000;
        int d4 = d1_to_d4 % 10;
        int d2_d3 = (d1_to_d4 - (d1 * 1000)) / 10;
        int d2 = d2_d3 / 10;
        int d3 = d2_d3 % 10;

        return d0 == d5 && d1 == d4 && d2 == d3;
    }
}
