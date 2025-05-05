Feature: Calculator
  Данный фича файл содержит сценарии использования калькулятора

  Scenario: Addition
  Тест на проверку сложения
    Given I opened a calculator
    When I add 2 and 2
    And print string "something"
    Then the result should be 4

  Scenario: Addition negative number
  Тест на проверку сложения отрицательных чисел
    Given I opened a calculator
    When I add 2 and -2
    Then the result should be 0

  Scenario: Subtraction
  Тест на проверку вычитания
    Given I opened a calculator
    When From 2 I subtract 2
    And print string "если первое число больше второго результат будет отрицательный"
    Then the result should be 0

  Scenario: Multiply
  Тест на проверку умножения
    Given I opened a calculator
    When I multiply 2 and 3
    Then the result should be 6

  Scenario: Multiply negative
  Тест на проверку умножения отрицательных чисел
    Given I opened a calculator
    When I multiply 2 and -7
    Then the result should be -14

  Scenario: Divide
  Тест на проверку деления
    Given I opened a calculator
    When I divide 4 by 2
    Then the result should be 2

  Scenario: Divide by zero
  Тест на проверку деления на 0
    Given I opened a calculator
    When I divide 8 by 0
    Then an exception with massage "На ноль делить нельзя" should be thrown

  Scenario Outline: Parametrized. Add two numbers <num1> & <num2>
    Тест на проверку таблиц
    Given I opened a calculator
    When I add <num1> and <num2>
    Then the result should be <total>

    Examples:
    | num1 | num2 | total |
    |  -2   |   3  |   1   |
    |  99   | -99  |   0   |
    |  -1   | -10  | -11   |

