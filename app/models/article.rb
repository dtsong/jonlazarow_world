class Article < ActiveRecord::Base
	# Gotta love being the last guy doing this lab
	attr_accessible :title, :content, :active, :category_id
	belongs_to :category

	validates_presence_of :title, :content

	scope :alphabetical, order('title')
	scope :active, where('active = ?', true)
end
