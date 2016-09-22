class Apprentice < ActiveRecord::Base
 	belongs_to :author
 	validates :author_id, uniqueness: true
end
