class Game < ActiveRecord::Base
  belongs_to :developer
  belongs_to :game_info
  belongs_to :review
  has_many :genre, through: :game_genre
end
