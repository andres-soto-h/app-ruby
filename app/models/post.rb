class Post < ApplicationRecord
    belongs_to :user
    validates :title, :author, presence: true
    validates :published, inclusion: { in: [true, false] }
end
