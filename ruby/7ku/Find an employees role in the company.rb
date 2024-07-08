# frozen_string_literal: true
# Find an employees role in the company
# https://www.codewars.com/kata/55c9fb1b407024afe6000055/train/ruby

def find_employees_role(name)
  $employees.find{|x| x['first_name']+' '+x['last_name']==name}['role'] rescue "Does not work here!"
end


p find_employees_role("Bell Anna") # "Does not work here!"


