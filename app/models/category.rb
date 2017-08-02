class Category < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged
	has_and_belongs_to_many :pages

	def slug_candidates
		[
  		:name,
  		[:name, :id]
		]
end

def should_generate_new_friendly_id?
    new_record?
end 
end
