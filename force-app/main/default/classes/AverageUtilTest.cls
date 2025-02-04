@isTest
public class AverageUtilTest {
    @isTest
    public static void testCalculateAverage() {
        // Arrange
        Decimal num1 = 10;
        Decimal num2 = 20;

        // Act
        Decimal result = AverageUtil.calculateAverage(num1, num2);

        // Assert
        System.assertEquals(15, result, 'Average calculation is incorrect');
    }
}