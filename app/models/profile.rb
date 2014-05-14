class Profile < ActiveRecord::Base
  belongs_to :user
  has_attached_file :avatar, :default_url => "empty_avatar.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
