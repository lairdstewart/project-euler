import java.util.HashSet;

/**
 * The prime factors of 13195 are 5, 7, 13, and 29.
 * What is the largest prime factor of the number 600851475143?
 */
public class P3 {
    public static void main(String[] args) {
        long n = 600851475143L;
        n = 77L;
        long largestPrimeFactor = 1;
        HashSet<Long> primeFactors = new HashSet<>();
        for (long i = 2; i < Math.sqrt(n); i++) {
            if (n % i != 0)
                continue;
            boolean divisibleByAnotherPrimeFactor = false;
            for (Long primeFactor : primeFactors) {
                if (i % primeFactor == 0) {
                    divisibleByAnotherPrimeFactor = true;
                    break;
                }
            }
            if (!divisibleByAnotherPrimeFactor) {
                primeFactors.add(i);
                largestPrimeFactor = i;
            }
        }
        System.out.println(largestPrimeFactor);
    }
}