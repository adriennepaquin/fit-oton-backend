class User < ActiveRecord::Base
    has_many :taken_classes
    has_many :workouts, through: :taken_classes
end