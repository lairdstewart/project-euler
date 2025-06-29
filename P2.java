/**
 * Each new term in the Fibonacci sequence is generated by adding the previous
 * two terms. By starting with 1 and 2, the first 10 terms will be
 * 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
 * By considering the terms in the Fibonacci sequence whose values do not exceed
 * four million, find the sum of the even-valued terms.
 */
public class P2 {
    public static void main(String[] args) {
        int a = 1;
        int b = 2;
        int c = 3;
        int sum = 2;
        while (c < 4000000) {
            a = b;
            b = c;
            c = a + b;
            if (c % 2 == 0)
                sum += c;
        }
        System.out.println(sum);
    }
}