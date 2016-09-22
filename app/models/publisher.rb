class Publisher < ActiveRecord::Base
	has_many :bookpublish
	has_many :book, through: :bookpublish
end
