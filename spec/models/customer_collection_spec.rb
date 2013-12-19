require 'spec_helper'

describe CustomerCollection do

  describe 'validations' do
    it { should have_valid(:customer_id).when(1) }
    it { should_not have_valid(:customer_id).when(nil, '') }

    it { should have_valid(:collection_id).when(1) }
    it { should_not have_valid(:collection_id).when(nil, '') }
  end

  describe 'associations' do
    it { should belong_to(:customer) }
    it { should belong_to(:collection) }
  end

end
