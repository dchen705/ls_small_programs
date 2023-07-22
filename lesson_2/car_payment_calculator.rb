# # MVP (minimum viable product) use SUBPROCESS
# Input loan amount 
# Input APR (like 6.9%)
# Input loan duration (in months)
# Calculate [SUBPROCESS]

# Processing:
# What formats should inputs be in?
# What formats do we need to calculate?



def car_loan_calculator()
    Kernel.puts("Let's find out your car's monthly payments.")
    
    Kernel.puts("Please enter your loan amount.")
    loan = Kernel.gets().chomp().to_f
    
    Kernel.puts("Enter APR in %")
    apr = Kernel.gets().chomp().to_f
    
    Kernel.puts("Enter your loan duration in months")
    months = Kernel.gets().chomp().to_f
    
    p "Monthly payments are: $#{calculate_monthly_payment(loan, apr, months).to_s}"
    
end

def calculate_monthly_payment(loan, apr, months)
    monthly_rate = apr / 100 / 12.0
    monthly_payment = loan * (monthly_rate / (1 - (1 + monthly_rate)**(-months)))
    monthly_payment.round(2)
end

car_loan_calculator()


# Refactor
# 1 - Validate loan as number
# 2 - Validate apr as between 0 and 100
# 3 - Valid months as integer greater than 0

# make method called validate that takes in all 3
# 1) use .numeric? 
# 2) use .numeric? and between 0 and 100
# 3) use .integer? and > 0

# Bonus Features

# Answer key: 
# suggested defining method within the calculator called prompt that would just
# add >> to each input request
# also used .empty? to check if string input was present.
# set the inputs = to '' < - an empty string then used loop do to validate