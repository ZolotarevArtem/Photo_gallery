class Foto < ActiveRecord::Base
	belongs_to :user
	has_attached_file :foto
end
