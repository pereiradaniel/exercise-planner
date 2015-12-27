class Day < ActiveRecord::Base
	belongs_to :microcycle
	has_many :exercises
end
