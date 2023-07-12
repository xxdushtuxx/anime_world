class Publisher < ApplicationRecord
    has_many :characters
    has_many :comic_books

    validates :name, presence: true, uniqueness: true
end
