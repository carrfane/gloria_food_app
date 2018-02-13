require 'rails_helper'

RSpec.describe Connection, type: :model do
  it { should have_one(:merge_restaurant) }
end
