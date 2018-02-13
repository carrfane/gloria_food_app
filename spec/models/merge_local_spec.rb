require 'rails_helper'

RSpec.describe MergeLocal, type: :model do
	context 'relations' do
		it { should belong_to(:merge_restaurant) }
	end
end
