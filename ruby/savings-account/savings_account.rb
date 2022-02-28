# frozen_string_literal: true

# A savings account accruing interest annually.
module SavingsAccount
  # Calculates the interest rate based on the specified balance:
  # * -3.213% for a negative balance.
  # * 0.5% for a non-negative balance less than 1000 dollars.
  # * 1.621% for a positive balance greater or equal than 1000 dollars and less than 5000 dollars.
  # * 2.475% for a positive balance greater or equal than 5000 dollars.
  def self.interest_rate(balance)
    if balance.negative?
      -3.213
    elsif balance >= 0 && balance < 1000
      0.5
    elsif balance >= 1000 && balance < 5000
      1.621
    else
      2.475
    end
  end

  # Calculates the annual balance update, taking into account the interest rate.
  def self.annual_balance_update(balance)
    balance + ((interest_rate(balance) / 100.0) * balance.abs)
  end

  # Calculate the minimum number of years required to reach the desired balance.
  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    years
  end
end
