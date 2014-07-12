require 'rails_helper'

# RSpec.describe Project, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Project do
	it 'is invalid without a name' do 
		expect(FactoryGirl.build(:project, name: nil)).to_not be_valid
	end
	it 'is invalid without a planning start date'
	it 'is invalid without a planning end date'
	it 'is invalid without an implementation start date'
	it 'is invalid without an implementation end date'
end