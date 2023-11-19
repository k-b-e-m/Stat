import java.util.List;



public class Main {


    public static void findInformationOfDiscretePDF(List<Double> probabilities, List<Double> values){

        double expectedValue = 0;
        for (int i = 0; i < probabilities.size(); i++) {
            expectedValue += probabilities.get(i) * values.get(i);
        }

        System.out.println("Expected Value: " + expectedValue);
        System.out.println("Reference Definition 3.11");

        double variance = 0;
        for (int i = 0; i < probabilities.size(); i++) {
            variance += probabilities.get(i) * Math.pow(values.get(i) - expectedValue, 2);
        }
        System.out.println("Variance: " + variance);
        System.out.println("Reference Variance 3.2.4 computation of variance and Lotus");
        System.out.println("Standerd Deviation: " + Math.sqrt(variance));
        System.out.println("Reference Variance 3.2.4 computation of Standard Deviation");

    }






    public static void main(String[] args) {
        //Calculating the expected value and variance of a discrete PDF
        List<Double> probabilities = List.of(0.25, 0.25, 0.5);
        List<Double> values = List.of(-5.0,0.0,5.0);
        findInformationOfDiscretePDF(probabilities, values);


    }
}
