class Project < ActiveRecord::Base
	belongs_to :user

	validates :name, :planning_start_date, :planning_end_date, :implementation_start_date, :implementation_end_date, :presence => true
end
