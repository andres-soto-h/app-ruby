class Post < ApplicationRecord
    has_many :comments, as: :commentable
    belongs_to :user
    validates :title, :author, presence: true
    validates :published, inclusion: { in: [true, false] }
end
