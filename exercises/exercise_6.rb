require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Alpha", last_name: "Nu", hourly_rate: 60)
@store1.employees.create(first_name: "Beta", last_name: "Xi", hourly_rate: 60)
@store1.employees.create(first_name: "Gamma", last_name: "Omicron", hourly_rate: 60)
@store1.employees.create(first_name: "Delta", last_name: "Pi", hourly_rate: 60)
@store1.employees.create(first_name: "Epsilon", last_name: "Rho", hourly_rate: 60)
@store2.employees.create(first_name: "Zeta", last_name: "Sigma", hourly_rate: 60)
@store2.employees.create(first_name: "Eta", last_name: "Tau", hourly_rate: 60)
@store2.employees.create(first_name: "Theta", last_name: "Upsilon", hourly_rate: 60)
@store2.employees.create(first_name: "Iota", last_name: "Phi", hourly_rate: 60)
@store2.employees.create(first_name: "Kappa", last_name: "Chi", hourly_rate: 60)
@store2.employees.create(first_name: "Lambda", last_name: "Psi", hourly_rate: 60)
@store2.employees.create(first_name: "Mu", last_name: "Omega", hourly_rate: 60)

puts Employee.count