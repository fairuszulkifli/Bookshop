class Book < ActiveRecord::Base
	belongs_to :author
	has_many :bookpublish
	has_many :publisher, through: :bookpublish
end
