# == Schema Information
#
# Table name: studios
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  theater_id :integer
#

class Studio < ActiveRecord::Base
	belongs_to :theaters
	validates :name, presence: true, length: { maximum: 50}
	validates :address, length: { maximum: 100}, allow_blank: true
	validates :url, length: { maximum: 80}, allow_blank: true
	has_many :movies,
			 class_name: "Movie",
			 foreign_key: "studio_id"
end
