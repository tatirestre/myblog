class Post < ActiveRecord::Base
	validates_presence_of :name, :content
	validates_uniqueness_of :name
	has_many :comments
end
