class Game < ActiveRecord::Base
  belongs_to :developer
  belongs_to :game_info
  belongs_to :review
  has_many :genre, through: :game_genre
  has_one :game_rate
  has_attached_file :install_file
  validates_attachment_content_type :install_file, :content_type => /\Aimage\/.*\Z/
end
