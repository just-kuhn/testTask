
class Page < ApplicationRecord

	extend FriendlyId
	friendly_id :title, use: :slugged
	has_and_belongs_to_many :categories

	def slug_candidates
[
  :title,
  [:title, :id]
]
end

def should_generate_new_friendly_id?
    new_record?
end 

end