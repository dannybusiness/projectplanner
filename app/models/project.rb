class Project < ActiveRecord::Base
	belongs_to :user

	validates :name, :planning_start_date, :planning_end_date, :implementation_start_date, :implementation_end_date, :presence => true
	validates_date :planning_start_date, :before => :planning_end_date
	validates_date :planning_end_date, :before => :implementation_start_date
	validates_date :implementation_start_date, :before => :implementation_end_date

	# def ordered_dates?
	# 	if planning_start_date.present? && planning_end_date.present? && planning_start_date > planning_end_date
	# 		errors.add(:date_order, 'Planning Start Date is occurs after Planning End Date')
	# 	end
	# end


end
