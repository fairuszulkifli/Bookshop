class Author < ActiveRecord::Base
	has_many :books
	has_one :apprentice
end
