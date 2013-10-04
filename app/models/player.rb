class Player < ActiveRecord::Base

	belongs_to :contest
	belongs_to :team
	
	def name
		self.first_name + " " + self.last_name
	end
end
