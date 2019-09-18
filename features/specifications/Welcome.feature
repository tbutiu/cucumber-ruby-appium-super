Feature: Welcome

  Scenario Outline: Valid screen text
    Given i am in welcome screen
    When i swipe the screen right "<swipe>" time
    Then i see the text "<text>"

  Examples:
    | swipe   | text    |
    | 0       | text0   |
    | 1       | text1   |
    | 2       | text2   |
    | 3       | text3   |
    | 4       | text4   |

#text0: 'Abra sua conta em menos de 5 minutos'
#text1: 'Receba e envie dinheiro para qualquer banco'
#text2: 'Compre e saque no Brasil todo com cartão pré-pago Mastercard'
#text3: 'Compre em sites e aplicativos mesmo sem cartão de crédito com o cartão virtual pré-pago'
#text4: 'Quase um banco, mas sem

  Scenario: Valid link Sign in
    Given i am in welcome screen
    When i choose the option to sign in
    Then i see the login screen

  Scenario: Valid button Test
    Given i am in welcome screen
    When i choose the option to test
    Then i see the register screen

  Scenario: Valid return welcome screen from register
    Given i am in welcome screen
    When i choose the option to test
    And  i see the register screen
    And i back to welcome screen
    Then i am in welcome screen