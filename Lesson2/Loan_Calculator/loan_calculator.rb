def prompt(message)
  Kernel.puts("=> #{message}")
end

def is_valid?(input)
  input.to_i().to_s() == input && input.to_i() > 0 
end

prompt("Welcome to the Mortgage/Car loan calculator. Please enter your name:")
name = Kernel.gets().chomp().capitalize()

prompt("Hello, #{name}!")

loan_amount = ''
loop do
  prompt("What is your desired total loan amount?")
  loan_amount = Kernel.gets().chomp()
  
  if is_valid?(loan_amount)
    break
  else
    prompt("Please enter a number greater than 0:")
  end
end

prompt("Thanks. Next question...")

apr = ''
loop do
  prompt("What is the Annual Percentage Rate(APR) in percentage form?")
  apr = gets().chomp()

  if is_valid?(apr)
    break
  else
    prompt("Please enter a number greater than 0:")
  end
end

loan_duration_years = ''
loop do
  prompt("What is the loan duration in years?")
  loan_duration_years = Kernel.gets().chomp

  if is_valid?(loan_duration_years)
    break
  else 
    prompt("Please enter a number greater than 0")
  end
end

loan_duration_months = loan_duration_years.to_i() * 12

monthly_interest_rate = (apr.to_f / 100) / 12 

monthly_payment = loan_amount.to_f() * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(- loan_duration_months)))

final_message = <<-MSG
  
  #{name}:

  Your monthly interest rate is #{monthly_interest_rate * 100}%.
  Your monthly payments will be: $#{monthly_payment} for a duration of : #{loan_duration_months} months.
  
  MSG
  
prompt(final_message)