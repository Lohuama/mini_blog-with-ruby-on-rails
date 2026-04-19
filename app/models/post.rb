class Post < ApplicationRecord
    validates :title, :description, presence: true
    validates :title, length: {minimum:3}
    validates :description, length: {maximum:15}

    before_save do
        self.title = self.title + " Loh"
    end
end
