class Post < ActiveRecord::Base
	validates :dimension, :inclusion => { :in => ["2D", "3D"] }
	validates :category, :inclusion => { :in => ["illustration", "web_design", "brand_identity_design", "motion_graphics", "photography"] }
	validates :project,  :inclusion => { :in => ["work", "personal"] }
	validates :title, :presence => { :message => "Title Required." }
	validates :title, :uniqueness => { :message => "Post by the same name already exists." }
	mount_uploader :image, ImageUploader
end
