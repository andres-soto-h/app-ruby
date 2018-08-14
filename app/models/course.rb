class Course < ApplicationRecord
    validates :name, presence: true
    validates :price, numericality: { only_integer: true }
    validates :price, numericality: { greater_than: 0 }
end
