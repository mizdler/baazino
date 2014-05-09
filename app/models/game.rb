class Game < ActiveRecord::Base
  belongs_to :developer
  belongs_to :review
  belongs_to :genre
  belongs_to :platform
  has_one :game_rate
  accepts_nested_attributes_for :review
  has_attached_file :install_file
  validates_attachment_content_type :install_file, :content_type => ['application/vnd.android.package-archive']
  
  has_attached_file :cover_photo
  validates_attachment_content_type :cover_photo, :content_type => /\Aimage\/.*\Z/

  has_attached_file :slide_photo
  validates_attachment_content_type :slide_photo, :content_type => /\Aimage\/.*\Z/
end
