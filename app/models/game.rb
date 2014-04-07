class Game < ActiveRecord::Base
  belongs_to :developer
  belongs_to :geme_info
  belongs_to :geme_genre
  belongs_to :game_review
end
