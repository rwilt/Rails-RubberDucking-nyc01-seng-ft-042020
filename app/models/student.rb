class Student < ApplicationRecord
    validates :name, :mod, presence: true
end
