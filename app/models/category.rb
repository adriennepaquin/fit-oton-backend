class Category < ActiveRecord::Base
    has_many :workouts
    has_many :instructors, through: :workouts
end