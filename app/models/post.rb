class Post < ApplicationRecord
    has_many :comments, as: :commentable
    belongs_to :user
    validates :title, :author, presence: true
    validates :published, inclusion: { in: [true, false] }
    scope :published, -> {where(published: true)}
    scope :created_before, -> (time) {where("created_at <?", time)}

    # def self.published
    #     where(published: true)
    # end

    after_create :print_message
    #after_create :mark_as_published

    private
    
    def print_message
        puts "Artículo creado!"
    end

    # def mark_as_published
    #   self.published=true
    # end

end
