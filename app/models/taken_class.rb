class TakenClass < ActiveRecord::Base
    belongs_to :user
    belongs_to :workout
end