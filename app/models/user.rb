class User < ActiveRecord::Base
    has_many :taken_classes
    has_many :workouts, through: :taken_classes

    def total_workouts
        self.workouts.count
    end

    def total_users
        self.count
    end

    def total_minutes
        self.workouts.sum(:length)
    end
end