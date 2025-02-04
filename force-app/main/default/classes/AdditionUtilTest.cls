@isTest
public class AdditionUtilTest {
    @isTest
    public static void testAddNumbers() {
        // Arrange
        Integer num1 = 5;
        Integer num2 = 10;

        // Act
        Integer result = AdditionUtil.addNumbers(num1, num2);

        // Assert
        System.assertEquals(15, result, 'Addition result is incorrect');
    }
}