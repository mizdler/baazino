class Video < ActiveRecord::Base
  belongs_to :game

  has_attached_file :video_file
  do_not_validate_attachment_file_type :video_file
end
