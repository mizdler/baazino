class Game < ActiveRecord::Base
  belongs_to :developer
  belongs_to :review
  belongs_to :genre
  belongs_to :platform
  has_one :game_rate
  has_one :video
  accepts_nested_attributes_for :review
  accepts_nested_attributes_for :video

  acts_as_votable
  acts_as_commentable

  has_attached_file :install_file
  do_not_validate_attachment_file_type :install_file

  has_attached_file :cover_photo
  validates_attachment_content_type :cover_photo, :content_type => /\Aimage\/.*\Z/

  def self.search(query)
    where("game_name like ? or description like ?", "%#{query}%", "%#{query}%")
  end
end
