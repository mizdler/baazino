class Game < ActiveRecord::Base
  belongs_to :developer
  belongs_to :review
  belongs_to :genre
  belongs_to :platform
  has_one :game_rate
  accepts_nested_attributes_for :review
  
  acts_as_votable
  acts_as_commentable

  has_attached_file :install_file
  validates_attachment_content_type :install_file, :content_type => ['application/vnd.android.package-archive']
  
  has_attached_file :cover_photo
  validates_attachment_content_type :cover_photo, :content_type => /\Aimage\/.*\Z/
end
