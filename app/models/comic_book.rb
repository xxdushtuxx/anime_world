class ComicBook < ApplicationRecord
  belongs_to :publisher

  validates :name, presence: true
end
