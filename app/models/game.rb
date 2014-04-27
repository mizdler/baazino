class Game < ActiveRecord::Base
  belongs_to :developer
  belongs_to :review
  belongs_to :genre
  belongs_to :platform
  has_one :game_rate
  has_attached_file :install_file
  validates_attachment_content_type :install_file, :content_type => /\Aimage\/.*\Z/
  accepts_nested_attributes_for :review
end
