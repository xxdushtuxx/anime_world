class Character < ApplicationRecord
  belongs_to :publisher

  validates :name, presence: true, uniqueness: true
end
