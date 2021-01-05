require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

#validations
class Store
  has_many :employees
  validates :name, length: { minimum: 3 }, allow_blank: false
  validates :annual_revenue, numericality: { 
    only_integer: true,
    greater_than_or_equal_to: 0
  }, allow_blank: false
  validate :apparel_presence
  validate :at_least_one_apparel

  def apparel_presence
    if mens_apparel == nil || womens_apparel == nil
      errors.add(:mens_apparel, "field cannot be empty")
      errors.add(:womens_apparel, "field cannot be empty")
    end
  end

  def at_least_one_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add("store must carry either women's or men's apparel")
    end
  end

end

class Employee
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { 
    only_integer: true,
    greater_than_or_equal_to: 40,
    less_than_or_equal_to: 200
  }
  validates :store_id, presence: true
end

# Ask the user for a store name (store it in a variable)
@store_id = Employee.find_by(first_name: 'Delta').store_id
@store_name = Store.find_by(id: 1).name
puts @store_name

# Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
@unicorn_store = Store.create(name: "Unicorn Fields")
puts @unicorn_store.name

# Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
puts @unicorn_store.errors.full_messages