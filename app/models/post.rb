class Post < ActiveRecord::Base
	extend FriendlyId
    friendly_id :name
	validates_presence_of :name, :content
	validates_uniqueness_of :name
	has_many :comments
end
