class Course < ApplicationRecord
    has_many :comments, as: :commentable
    has_and_belongs_to_many :students
    validates :name, presence: true
    validates :price, numericality: { only_integer: true }
    validates :price, numericality: { greater_than: 0 }
end
