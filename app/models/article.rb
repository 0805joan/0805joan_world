class Article < ApplicationRecord
    has_one :category

	scope :active, 			 -> { where('active = ?', true) }
    scope :alphabetical, -> { order('name') }
    validates_presence_of :title, :content
end
