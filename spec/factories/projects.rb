require 'faker'

FactoryGirl.define do 
	factory :project do |f|
		f.name {Faker::Lorem.words 5}
		f.planning_start_date '27-10-2014'
		f.planning_end_date '31-10-2014'
		f.implementation_start_date '1-11-2014'
		f.implementation_end_date '4-11-2014'
	end
end
