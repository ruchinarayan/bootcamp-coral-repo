# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  stars      :integer
#  title      :string
#  commentary :string
#  created_at :datetime         not null
#  updated_at :datetime         not null

#  review_id  :integer
#  person_id  :integer
#

class Review < ActiveRecord::Base
	 validates :stars, presence: true, inclusion:{in: 0..5} 
	 validates :title, presence: true, length: {maximum: 100}
	 validates :commentary, presence: true, length: {maximum: 10000}

	 belongs_to :person,
	             class_name: "Person",
	             foreign_key: "person_id"
end
