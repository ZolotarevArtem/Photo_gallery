class Picture < ActiveRecord::Base
  belongs_to :user
  has_attached_file :pic
end
