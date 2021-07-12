class Workout < ActiveRecord::Base
    belongs_to :category
    belongs_to :instructor
    has_many :users
    has_many :workouts, through: :users
end