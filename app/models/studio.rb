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
#

class Studio < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50}
	validates :address, length: { maximum: 100}, allow_blank: true
	validates :url, length: { maximum: 80}, allow_blank: true
end
