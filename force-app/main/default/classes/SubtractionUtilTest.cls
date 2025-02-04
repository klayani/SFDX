@isTest
public class SubtractionUtilTest {
    @isTest
    public static void testSubtractNumbers() {
        // Arrange
        Integer num1 = 10;
        Integer num2 = 5;

        // Act
        Integer result = SubtractionUtil.subtractNumbers(num1, num2);

        // Assert
        System.assertEquals(5, result, 'Subtraction result is incorrect');
    }
}