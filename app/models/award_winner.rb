class AwardWinner < ApplicationRecord
    belongs_to :award
    belongs_to :award_receiver, polymorphic: true
  end
  