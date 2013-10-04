class Contest < ActiveRecord::Base
	
	has_many :players

  #attr_accessible :name, :started_on, :ended_on
  validates :name, presence: true, uniqueness: true
end
