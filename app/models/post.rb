class Post < ActiveRecord::Base
	extend FriendlyId
    friendly_id :name
	validates_presence_of :name, :content
	validates_uniqueness_of :name
	has_many :comments
	has_many :post_categories
	has_many :categories, through: :post_categories
	belongs_to :user
end
