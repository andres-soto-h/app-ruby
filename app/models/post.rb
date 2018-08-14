class Post < ApplicationRecord
    validates :title, :author, presence: true
    validates :published, inclusion: { in: [true, false] }
end
