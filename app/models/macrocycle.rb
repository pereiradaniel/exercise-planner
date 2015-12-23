class Macrocycle < ActiveRecord::Base
	belongs_to :plan
	has_many :mesocycles
end
