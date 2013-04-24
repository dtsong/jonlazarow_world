class Article < ActiveRecord::Base
	attr_accessible :title, :content, :active, :category_id
	belongs_to :category

	validates_presence_of :title, :content

	scope :alphabetical, order('title')
	scope :active, where('active = ?', true)
end
