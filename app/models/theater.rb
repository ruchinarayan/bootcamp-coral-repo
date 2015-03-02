# == Schema Information
#
# Table name: theaters
#
#  id              :integer          not null, primary key
#  theater_name    :string
#  theater_address :string
#  theater_phone   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Theater < ActiveRecord::Base
	has_many :studios
#   validates :email, presence: true, length: { maximum: 255 }
	validates :theater_name, presence:  true, length: { maximum: 50 }
	validates :theater_address, allow_blank:  true, length: { maximum: 100 }
    validates :theater_phone, allow_blank: true, length: { maximum: 20 }
	# validates_length_of :theater_name, :maximum => 50, :message => "less than %d if you don't mind"

end	
