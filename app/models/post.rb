class Post < ActiveRecord::Base
	validates :dimension, :inclusion => { :in => ["2D", "3D"]
	validates :category, :inclusion => { :in => ["Illustration", "Web Design", "Brand Identity Design", "Motion Graphics", "Photography"]
	validates :type, :inclusion => { :in => ["Work", "Personal"]
end
