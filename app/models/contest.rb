class Contest < ActiveRecord::Base
  #attr_accessible :name, :started_on, :ended_on
  validates :name, presence: true, uniqueness: true
end
