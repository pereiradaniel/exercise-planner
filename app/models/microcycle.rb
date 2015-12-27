class Microcycle < ActiveRecord::Base
	belongs_to :mesocycle
	has_many :days
end
