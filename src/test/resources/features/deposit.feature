Feature: Deposit
    As a customer
    I want to deposit into my account using ATM

Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

Scenario: Deposit more than 0
  When I deposit 50 to ATM
  Then my account balance is 250

  Scenario: Deposit <= 0
    When I deposit 0 to ATM
    Then my account balance is 200