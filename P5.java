/**
 * 2520 is the smallest number that can be divided by each of the numbers from 1
 * to 10 without any remainer. What is the smallest positive number that is
 * evenly divisible by all of the numbers from 1 to 20?
 */
public class P5 {
    public static void main(String[] args) {
        for (int i = 19; i < Integer.MAX_VALUE; i += 19) {
            if (i % 10 == 0 &&
                    i % 11 == 0 &&
                    i % 12 == 0 &&
                    i % 13 == 0 &&
                    i % 14 == 0 &&
                    i % 15 == 0 &&
                    i % 16 == 0 &&
                    i % 17 == 0 &&
                    i % 18 == 0) {
                System.out.println(i);
                return;
            }
        }
    }
}
