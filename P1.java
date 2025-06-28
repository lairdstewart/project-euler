/**
 * If we list all the natural numbers below 10 that are multiples of 3 or 5, we
 * get 3, 5, 6, and 9. The sum of these multiples is 23. Find the sum of all the
 * multiples of 3 or 5 below 1000.
 */
public class P1 {
    public static void main(String args[]) {
        long sum = 0;
        for (int j = 0; j < 1000; j++) {
            if (j % 3 == 0 || j % 5 == 0) {
                sum += j;
            }
        }
        System.out.println(sum);
    }
}