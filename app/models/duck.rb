class Duck < ApplicationRecord
    validates :name, :description, :student_id, presence: true
end

