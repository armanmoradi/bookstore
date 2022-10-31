class Book < ApplicationRecord
	belongs_to :category
	belongs_to :auther
	belongs_to :publisher
end
