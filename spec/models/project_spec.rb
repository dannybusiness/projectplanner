require 'rails_helper'

# RSpec.describe Project, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Project do
	it 'is invalid without a name' do 
		expect(FactoryGirl.build(:project, name: nil)).to_not be_valid
	end
	it 'is invalid without a planning start date' do 
		expect(FactoryGirl.build(:project, planning_start_date: nil)).to_not be_valid
	end
	it 'is invalid without a planning end date' do
		expect(FactoryGirl.build(:project, planning_end_date: nil)).to_not be_valid
	end
	it 'is invalid without an implementation start date' do
		expect(FactoryGirl.build(:project, implementation_start_date: nil)).to_not be_valid
	end
	it 'is invalid without an implementation end date' do
		expect(FactoryGirl.build(:project, implementation_end_date: nil)).to_not be_valid
	end
	it 'is invalid with improperly ordered start and end dates ' do
		expect(FactoryGirl.build(:project, planning_start_date: '31/12/2014')).to_not be_valid
	end
end